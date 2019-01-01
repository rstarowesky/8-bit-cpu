EESchema Schematic File Version 4
LIBS:8-bit-cpu-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 4 6
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
L 74xx:74LS245 U?
U 1 1 5C2C6A83
P 2400 3000
F 0 "U?" H 2400 3978 50  0000 C CNN
F 1 "74LS245" H 2400 3887 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U?
U 1 1 5C2C6BB7
P 4500 3100
F 0 "U?" H 4500 4178 50  0000 C CNN
F 1 "74LS173" H 4500 4087 50  0000 C CNN
F 2 "" H 4500 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4500 3100 50  0001 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U?
U 1 1 5C2C6C45
P 4500 5300
F 0 "U?" H 4500 6378 50  0000 C CNN
F 1 "74LS173" H 4500 6287 50  0000 C CNN
F 2 "" H 4500 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 4500 5300 50  0001 C CNN
	1    4500 5300
	1    0    0    -1  
$EndComp
Text GLabel 1900 3200 0    50   BiDi ~ 0
W0
Text GLabel 1900 3100 0    50   BiDi ~ 0
W1
Text GLabel 1900 3000 0    50   BiDi ~ 0
W2
Text GLabel 1900 2900 0    50   BiDi ~ 0
W3
Text GLabel 1900 2800 0    50   BiDi ~ 0
W4
Text GLabel 1900 2700 0    50   BiDi ~ 0
W5
Text GLabel 1900 2600 0    50   BiDi ~ 0
W6
Text GLabel 1900 2500 0    50   BiDi ~ 0
W7
Text GLabel 5000 5000 2    50   Output ~ 0
W0
Text GLabel 5000 4900 2    50   Output ~ 0
W1
Text GLabel 5000 4800 2    50   Output ~ 0
W2
Text GLabel 5000 4700 2    50   Output ~ 0
W3
Text GLabel 5000 2800 2    50   Output ~ 0
W4
Text GLabel 5000 2700 2    50   Output ~ 0
W5
Text GLabel 5000 2600 2    50   Output ~ 0
W6
Text GLabel 5000 2500 2    50   Output ~ 0
W7
Text GLabel 1900 3400 0    50   Input ~ 0
VCC
Wire Wire Line
	4000 2500 2900 2500
Wire Wire Line
	4000 2600 2900 2600
Wire Wire Line
	4000 2700 2900 2700
Wire Wire Line
	4000 2800 2900 2800
Wire Wire Line
	4000 4700 3300 4700
Wire Wire Line
	3300 4700 3300 2900
Wire Wire Line
	3300 2900 2900 2900
Wire Wire Line
	4000 4800 3200 4800
Wire Wire Line
	3200 4800 3200 3000
Wire Wire Line
	3200 3000 2900 3000
Wire Wire Line
	4000 4900 3100 4900
Wire Wire Line
	3100 4900 3100 3100
Wire Wire Line
	3100 3100 2900 3100
Wire Wire Line
	4000 5000 3000 5000
Wire Wire Line
	3000 5000 3000 3200
Wire Wire Line
	3000 3200 2900 3200
Wire Wire Line
	4000 3000 4000 3100
Wire Wire Line
	4000 5200 4000 5300
Wire Wire Line
	4000 5500 4000 5600
Wire Wire Line
	4000 3400 4000 3300
Text HLabel 4000 3500 0    50   Input ~ 0
CLK
Text HLabel 4000 5700 0    50   Input ~ 0
CLK
Text HLabel 4000 3700 0    50   Input ~ 0
A_CLR
Text HLabel 4000 5900 0    50   Input ~ 0
A_CLR
Text GLabel 4000 3000 0    50   Input ~ 0
GND
Text GLabel 4000 5200 0    50   Input ~ 0
GND
Text HLabel 4000 3300 0    50   Input ~ 0
A_LD
Text HLabel 4000 5500 0    50   Input ~ 0
A_LD
Text HLabel 1900 3500 0    50   Input ~ 0
A_OUT
Wire Wire Line
	1900 2500 1100 2500
Wire Wire Line
	1900 2600 1100 2600
Wire Wire Line
	1900 2700 1100 2700
Wire Wire Line
	1900 2800 1100 2800
Wire Wire Line
	1900 2900 1100 2900
Wire Wire Line
	1900 3000 1100 3000
Wire Wire Line
	1900 3100 1100 3100
Wire Wire Line
	1900 3200 1100 3200
Entry Wire Line
	1000 2400 1100 2500
Entry Wire Line
	1000 2500 1100 2600
Entry Wire Line
	1000 2600 1100 2700
Entry Wire Line
	1000 2700 1100 2800
Entry Wire Line
	1000 2800 1100 2900
Entry Wire Line
	1000 2900 1100 3000
Entry Wire Line
	1000 3000 1100 3100
Entry Wire Line
	1000 3100 1100 3200
Text HLabel 1000 3600 2    50   BiDi ~ 0
W_BUS
Wire Bus Line
	1000 2400 1000 3700
Text GLabel 4500 4000 0    50   Input ~ 0
GND
Text GLabel 4500 2200 0    50   Input ~ 0
VCC
Text GLabel 4500 4400 0    50   Input ~ 0
VCC
Text GLabel 4500 6200 0    50   Input ~ 0
GND
Text GLabel 2900 3200 2    50   Input ~ 0
A0
Text GLabel 2900 3100 2    50   Input ~ 0
A1
Text GLabel 2900 3000 2    50   Input ~ 0
A2
Text GLabel 2900 2900 2    50   Input ~ 0
A3
Text GLabel 2900 2800 2    50   Input ~ 0
A4
Text GLabel 2900 2700 2    50   Input ~ 0
A5
Text GLabel 2900 2600 2    50   Input ~ 0
A6
Text GLabel 2900 2500 2    50   Input ~ 0
A7
$EndSCHEMATC
