EESchema Schematic File Version 4
LIBS:8-bit-cpu-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 5C2C9C43
P 1750 3500
F 0 "U?" H 1750 4778 50  0000 C CNN
F 1 "28C256" H 1750 4687 50  0000 C CNN
F 2 "" H 1750 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 1750 3500 50  0001 C CNN
	1    1750 3500
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 5C2C9D3D
P 3550 3500
F 0 "U?" H 3550 4778 50  0000 C CNN
F 1 "28C256" H 3550 4687 50  0000 C CNN
F 2 "" H 3550 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 3550 3500 50  0001 C CNN
	1    3550 3500
	1    0    0    -1  
$EndComp
Text GLabel 2150 2600 2    50   Input ~ 0
W0
Text GLabel 2150 2700 2    50   Input ~ 0
W1
Text GLabel 2150 2800 2    50   Input ~ 0
W2
Text GLabel 2150 2900 2    50   Input ~ 0
W3
Text GLabel 3950 2600 2    50   Output ~ 0
W4
Text GLabel 3950 2700 2    50   Output ~ 0
W5
Text GLabel 3950 2800 2    50   Output ~ 0
W6
Text GLabel 3950 2900 2    50   Output ~ 0
W7
Text GLabel 1350 2600 0    50   Input ~ 0
B0
Text GLabel 1350 2700 0    50   Input ~ 0
B1
Text GLabel 1350 2800 0    50   Input ~ 0
B2
Text GLabel 1350 2900 0    50   Input ~ 0
B3
Text GLabel 1350 3000 0    50   Input ~ 0
A0
Text GLabel 1350 3100 0    50   Input ~ 0
A1
Text GLabel 1350 3200 0    50   Input ~ 0
A2
Text GLabel 1350 3300 0    50   Input ~ 0
A3
Text GLabel 1350 3400 0    50   Input ~ 0
S0
Text GLabel 1350 3500 0    50   Input ~ 0
S1
Text GLabel 1350 3600 0    50   Input ~ 0
S2
Text GLabel 1350 3700 0    50   Input ~ 0
S3
Text GLabel 3150 2600 0    50   Input ~ 0
B4
Text GLabel 3150 2700 0    50   Input ~ 0
B5
Text GLabel 3150 2800 0    50   Input ~ 0
B6
Text GLabel 3150 2900 0    50   Input ~ 0
B7
Text GLabel 3150 3000 0    50   Input ~ 0
A4
Text GLabel 3150 3100 0    50   Input ~ 0
A5
Text GLabel 3150 3200 0    50   Input ~ 0
A6
Text GLabel 3150 3300 0    50   Input ~ 0
A7
Text GLabel 3150 3400 0    50   Input ~ 0
S0
Text GLabel 3150 3500 0    50   Input ~ 0
S1
Text GLabel 3150 3600 0    50   Input ~ 0
S2
Text GLabel 3150 3700 0    50   Input ~ 0
S3
Text GLabel 1350 3800 0    50   Input ~ 0
C
Text GLabel 3950 3000 2    50   Output ~ 0
C
Wire Wire Line
	2150 3000 2350 3000
Wire Wire Line
	2350 3000 2350 3800
Wire Wire Line
	2350 3800 3150 3800
Text GLabel 3950 3300 2    50   Output ~ 0
S
Text GLabel 2350 3000 2    50   Input ~ 0
A
Text GLabel 1350 4200 0    50   Input ~ 0
VCC
Text GLabel 3150 4200 0    50   Input ~ 0
VCC
Text GLabel 1350 4400 0    50   Input ~ 0
GND
Text GLabel 3150 4400 0    50   Input ~ 0
GND
Text HLabel 1350 4300 0    50   Input ~ 0
ALU_OUT
Text HLabel 3150 4300 0    50   Input ~ 0
ALU_OUT
Text GLabel 3550 4600 0    50   Input ~ 0
GND
Text GLabel 1750 4600 0    50   Input ~ 0
GND
Text GLabel 3550 2400 0    50   Input ~ 0
VCC
Text GLabel 1750 2400 0    50   Input ~ 0
VCC
$Comp
L 74xx_IEEE:74LS266 U?
U 1 1 5C2CA953
P 5300 2650
F 0 "U?" H 5300 3116 50  0000 C CNN
F 1 "74LS266" H 5300 3025 50  0000 C CNN
F 2 "" H 5300 2650 50  0001 C CNN
F 3 "" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5C2CAB92
P 5250 3300
F 0 "U?" H 5250 3625 50  0000 C CNN
F 1 "74LS08" H 5250 3534 50  0000 C CNN
F 2 "" H 5250 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5250 3300 50  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3200 2250 3200
Wire Wire Line
	2250 4750 4200 4750
Text GLabel 5550 3300 2    50   Input ~ 0
Z
Text GLabel 5800 2650 2    50   Input ~ 0
P
Wire Wire Line
	4600 3100 4600 2550
Wire Wire Line
	4600 2550 4800 2550
Wire Wire Line
	2150 3100 2300 3100
Wire Wire Line
	4750 2750 4800 2750
Wire Wire Line
	2250 3200 2250 4750
Wire Wire Line
	2300 3100 2300 4700
Wire Wire Line
	4200 3400 4200 4700
Wire Wire Line
	4750 2750 4750 4700
$Comp
L 74xx:74LS173 U?
U 1 1 5C2CCDD1
P 6700 3250
F 0 "U?" H 6700 4328 50  0000 C CNN
F 1 "74LS173" H 6700 4237 50  0000 C CNN
F 2 "" H 6700 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U?
U 1 1 5C2CCFDB
P 6700 5400
F 0 "U?" H 6700 6478 50  0000 C CNN
F 1 "74LS173" H 6700 6387 50  0000 C CNN
F 2 "" H 6700 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 6700 5400 50  0001 C CNN
	1    6700 5400
	1    0    0    -1  
$EndComp
Text GLabel 6200 2650 0    50   Input ~ 0
C
Text GLabel 6200 2850 0    50   Input ~ 0
P
Text GLabel 6200 4800 0    50   Input ~ 0
A
Text GLabel 6200 5000 0    50   Input ~ 0
Z
Wire Wire Line
	4200 4700 4200 4750
Wire Wire Line
	2150 2600 2400 2600
Wire Wire Line
	2400 2600 2400 2100
Wire Wire Line
	2400 2100 800  2100
Wire Wire Line
	2150 2700 2500 2700
Wire Wire Line
	2500 2700 2500 2000
Wire Wire Line
	2500 2000 800  2000
Wire Wire Line
	2150 2800 2600 2800
Wire Wire Line
	2600 2800 2600 1900
Wire Wire Line
	2600 1900 800  1900
Wire Wire Line
	2150 2900 2700 2900
Wire Wire Line
	2700 2900 2700 1800
Wire Wire Line
	2700 1800 800  1800
Wire Wire Line
	3950 2600 4200 2600
Wire Wire Line
	4200 2600 4200 1700
Wire Wire Line
	4200 1700 800  1700
Wire Wire Line
	3950 2700 4300 2700
Wire Wire Line
	4300 2700 4300 1600
Wire Wire Line
	4300 1600 800  1600
Wire Wire Line
	3950 2800 4400 2800
Wire Wire Line
	4400 2800 4400 1500
Wire Wire Line
	4400 1500 800  1500
Wire Wire Line
	3950 2900 4500 2900
Wire Wire Line
	4500 2900 4500 1400
Wire Wire Line
	4500 1400 800  1400
Wire Wire Line
	3950 3100 4600 3100
Wire Wire Line
	3950 3200 4950 3200
Wire Wire Line
	4200 3400 4950 3400
Wire Wire Line
	2300 4700 4750 4700
Entry Wire Line
	700  1300 800  1400
Entry Wire Line
	700  1400 800  1500
Entry Wire Line
	700  1500 800  1600
Entry Wire Line
	700  1600 800  1700
Entry Wire Line
	700  1700 800  1800
Entry Wire Line
	700  1800 800  1900
Entry Wire Line
	700  1900 800  2000
Entry Wire Line
	700  2000 800  2100
Text HLabel 700  2300 2    50   Input ~ 0
W_BUS
Text GLabel 7200 2650 2    50   Output ~ 0
C
Text GLabel 7200 2850 2    50   Output ~ 0
P
Text GLabel 7200 4800 2    50   Output ~ 0
A
Text GLabel 7200 5000 2    50   Output ~ 0
Z
Text GLabel 7200 5100 2    50   Output ~ 0
S
Text GLabel 6200 5100 0    50   Input ~ 0
S
Wire Wire Line
	6200 3150 6200 3250
Wire Wire Line
	6200 3450 6200 3550
Wire Wire Line
	6200 5300 6200 5400
Wire Wire Line
	6200 5600 6200 5700
Wire Bus Line
	700  850  700  4450
Text HLabel 6200 5800 0    50   Input ~ 0
CLK
Text HLabel 6200 3650 0    50   Input ~ 0
CLK
Text HLabel 6200 3850 0    50   Input ~ 0
F_CLR
Text HLabel 6200 6000 0    50   Input ~ 0
F_CLR
Text HLabel 6200 3450 0    50   Input ~ 0
F_LD
Text HLabel 6200 3150 0    50   Input ~ 0
F_OUT
Text HLabel 6200 5300 0    50   Input ~ 0
F_OUT
Text HLabel 6200 5400 0    50   Input ~ 0
F_LD
$EndSCHEMATC
