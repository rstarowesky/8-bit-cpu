#include <util/parity.h>

#define SHIFT_DATA 2
#define SHIFT_CLK 3
#define SHIFT_LATCH 4
#define EEPROM_D0 5
#define EEPROM_D7 12
#define WRITE_EN 13


/*
 * Output the address bits and outputEnable signal using shift registers.
 */
void setAddress(int address, bool outputEnable) {
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, (address >> 8) | (outputEnable ? 0x00 : 0x80));
  shiftOut(SHIFT_DATA, SHIFT_CLK, MSBFIRST, address);

  digitalWrite(SHIFT_LATCH, LOW);
  digitalWrite(SHIFT_LATCH, HIGH);
  digitalWrite(SHIFT_LATCH, LOW);
}

/*
 * Read a byte from the EEPROM at the specified address.
 */
byte readEEPROM(int address) {
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    pinMode(pin, INPUT);
  }
  setAddress(address, /*outputEnable*/ true);

  byte data = 0;
  for (int pin = EEPROM_D7; pin >= EEPROM_D0; pin -= 1) {
    data = (data << 1) + digitalRead(pin);
  }
  return data;
}


/*
 * Write a byte to the EEPROM at the specified address.
 */
void writeEEPROM(int address, byte data) {
  setAddress(address, /*outputEnable*/ false);
  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    pinMode(pin, OUTPUT);
  }

  for (int pin = EEPROM_D0; pin <= EEPROM_D7; pin += 1) {
    digitalWrite(pin, data & 1);
    data = data >> 1;
  }
  digitalWrite(WRITE_EN, LOW);
  delayMicroseconds(1);
  digitalWrite(WRITE_EN, HIGH);
  delay(10);
}


/*
 * Read the contents of the EEPROM and print them to the serial monitor.
 */
void printContents() {
  for (int base = 0; base <= 255; base += 16) {
    byte data[16];
    for (int offset = 0; offset <= 15; offset += 1) {
      data[offset] = readEEPROM(base + offset);
    }

    char buf[80];
    sprintf(buf, "%03x:  %02x %02x %02x %02x %02x %02x %02x %02x   %02x %02x %02x %02x %02x %02x %02x %02x",
            base, data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15]);

    Serial.println(buf);
  }
}

int Cn, Sx, S, Z, P, C, A, B, F;
byte data = 0;
bool lsb = 0; //true if programming the lower 4 bits, false if programming higher bits (i.e, 4-7, 8-11, 12-15...)

// 4-bit hex decoder for common anode 7-segment display
//byte data[] = { 0x81, 0xcf, 0x92, 0x86, 0xcc, 0xa4, 0xa0, 0x8f, 0x80, 0x84, 0x88, 0xe0, 0xb1, 0xc2, 0xb0, 0xb8 };

// 4-bit hex decoder for common cathode 7-segment display
// byte data[] = { 0x7e, 0x30, 0x6d, 0x79, 0x33, 0x5b, 0x5f, 0x70, 0x7f, 0x7b, 0x77, 0x1f, 0x4e, 0x3d, 0x4f, 0x47 };


void setup() {
  // put your setup code here, to run once:
  pinMode(SHIFT_DATA, OUTPUT);
  pinMode(SHIFT_CLK, OUTPUT);
  pinMode(SHIFT_LATCH, OUTPUT);
  digitalWrite(WRITE_EN, HIGH);
  pinMode(WRITE_EN, OUTPUT);
  Serial.begin(57600);

  // Erase entire EEPROM
  Serial.print("Erasing EEPROM");
  for (int address = 0; address < pow(2,13); address += 1) {
    writeEEPROM(address, 0xff);

    if (address % 64 == 0) {
      Serial.print(".");
    }
  }
  Serial.println(" done");
  
  Serial.print("Programming EEPROM");

//  Input: X X X Cn S3 S2 S1 S0 A3 A2 A1 A0 B3 B2 B1 B0
// Output: S Z P C F3 F2 F1 F0
  
  for (int address = 0; address < pow(2,13); address++) {
    F = 0;
    //M  = (address & 0b0010000000000000) >> 13;
    Cn = (address & 0b0001000000000000) >> 12;
    Sx  = (address & 0b0000111100000000) >> 8;
    A  = (address & 0b0000000011110000) >> 4;
    B  = (address & 0b0000000000001111);
    Z = 0;

    switch(Sx) {
      case 0 : // ADD        
        if (lsb) { //only write this for the lowest nibble
          F = A + B;
        }
        else { //write this for any other nibble
          F = A + B + Cn; // always add the carry from the previous nibble
        }
        break;
      case 1 : // ADC
        F = A + B + Cn;
        break;
      case 2 : // SUB
        if (lsb) {
          F = A + (0xF & (~B)) + 1; //add the 2's complement of B to A
        }
        else {
          F = A + (0xF & (~B)) + Cn; //don't need the 1 for higher nibbles, but we take the borrow from the lower nibble
        }
        break;
      case 3 : // SBC
          F = A + (0xF & (~B)) + Cn; //same as SUB but adding the carry instead of 1
        break;
      case 4 : // AND
        F = A & B;
        break;
      case 5 : // OR
        F = A | B;
        break;
      case 6 : // XOR
        F = 0xF & (A ^ B);
        break;
      case 7 : // CBR
        F = A & (0xF & (~B));
        break;  
      case 8 : // COM
        F = 0xF & (~A);
        break;
      case 9 : // NEG
        if (lsb) {
          F = (0xF & (~A)) + 1;
        }
        else {
          F = (0xF & (~A)) + Cn; //need the carry from the lower nibble
        }
        break;
      case 10 : // INC
        if (lsb) {
          F = A + 1;
        }
        else {
          F = A + Cn; //carry from the lower nibble
        }
        break;  
      case 11 : // DEC
        if (lsb) {
          F = A - 1;
        }
        else {
          F = A - Cn; //borrow from the lower nibble
        }
        break;
      case 12 : // TST
        F = A;
        break;
      case 13 : // SHL, perform a left shift, then add the carry out for a ROL
        if (lsb) {
          F = A + A;
        }
        else {
          F = A + A + Cn; //carry is the left shift from B3
        }
        break;
      case 14 : // ROR, perform this, then load the original word, and RCL 4 times
        if (lsb) {
          F = (A | 0b1110) + 1; //checking the lowest bit of the byte. 
        }
        else {
          F = 0xF + Cn; //move the carry from the lower bit to the carry out
        }
        break;
      case 15 : // RCL
        F = A + A + Cn; // repeat 4 times for SHR
        break;
    }

    S = (F & 0x8) >> 3; //highest bit of the nibble
    
    if ((F & 0xF) == 0) { // AND the two zero flags to get the zero flag of the byte
      Z = 1;
    }
    else {
      Z == 0;
    }
    
    P = 1 & (~parity_even_bit(F & 0xF)); //odd parity per x86 instruction set. XNOR the parity of both nibbles to get the parity of the byte 
    
    C = (F & 0x10) >> 4; //carry is the 5th bit
    
    data = ((S << 7) | (Z << 6) | (P << 5) | (C << 4) | (F & 0xF)); //build the data byte
    writeEEPROM(address, data);
    //Serial.print("Address: ");
    //Serial.print(address, BIN);
    //Serial.print(" Data: ");
    //Serial.print(data, BIN);
    //Serial.print(" F: ");
    //Serial.println(F, BIN);

    if (address % 64 == 0) {
      Serial.print(".");
    }
  }
  Serial.println(" done");
  
}   

void loop() {
  // put your main code here, to run repeatedly:

}
