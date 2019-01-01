EESchema Schematic File Version 4
LIBS:8-bit-cpu-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 6
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
L 74xx:74LS161 U?
U 1 1 5C214E99
P 5000 3800
F 0 "U?" H 5000 4778 50  0000 C CNN
F 1 "74LS161" H 5000 4687 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5000 3800 50  0001 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5C2152E1
P 2400 3800
F 0 "U?" H 2400 4778 50  0000 C CNN
F 1 "74LS245" H 2400 4687 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5C215324
P 2400 8000
F 0 "U?" H 2400 8978 50  0000 C CNN
F 1 "74LS161" H 2400 8887 50  0000 C CNN
F 2 "" H 2400 8000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2400 8000 50  0001 C CNN
	1    2400 8000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5C215402
P 2400 5900
F 0 "U?" H 2400 6878 50  0000 C CNN
F 1 "74LS161" H 2400 6787 50  0000 C CNN
F 2 "" H 2400 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 2400 5900 50  0001 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS161 U?
U 1 1 5C2154AF
P 5000 5900
F 0 "U?" H 5000 6878 50  0000 C CNN
F 1 "74LS161" H 5000 6787 50  0000 C CNN
F 2 "" H 5000 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5000 5900 50  0001 C CNN
	1    5000 5900
	1    0    0    -1  
$EndComp
Text HLabel 4500 4100 0    50   Input ~ 0
CLK
Wire Wire Line
	5500 3300 5600 3300
Wire Wire Line
	5600 3300 5600 1900
Wire Wire Line
	5600 1900 5500 1900
Wire Wire Line
	5500 3400 5700 3400
Wire Wire Line
	5700 3400 5700 1800
Wire Wire Line
	5700 1800 5500 1800
Wire Wire Line
	5500 3500 5800 3500
Wire Wire Line
	5800 3500 5800 1700
Wire Wire Line
	5800 1700 5500 1700
Wire Wire Line
	5500 3600 5900 3600
Wire Wire Line
	5900 3600 5900 1600
Wire Wire Line
	5900 1600 5500 1600
Wire Wire Line
	5500 5400 6000 5400
Wire Wire Line
	6000 5400 6000 1500
Wire Wire Line
	6000 1500 5500 1500
Wire Wire Line
	5500 5500 6100 5500
Wire Wire Line
	6100 5500 6100 1400
Wire Wire Line
	6100 1400 5500 1400
Wire Wire Line
	5500 5600 6200 5600
Wire Wire Line
	6200 5600 6200 1300
Wire Wire Line
	6200 1300 5500 1300
Wire Wire Line
	5500 5700 6300 5700
Wire Wire Line
	6300 5700 6300 1200
Wire Wire Line
	6300 1200 5500 1200
Wire Wire Line
	2900 5400 3000 5400
Wire Wire Line
	3000 5400 3000 4000
Wire Wire Line
	3000 4000 2900 4000
Wire Wire Line
	2900 5500 3100 5500
Wire Wire Line
	3100 5500 3100 3900
Wire Wire Line
	3100 3900 2900 3900
Wire Wire Line
	2900 5600 3200 5600
Wire Wire Line
	3200 5600 3200 3800
Wire Wire Line
	3200 3800 2900 3800
Wire Wire Line
	2900 5700 3300 5700
Wire Wire Line
	3300 5700 3300 3700
Wire Wire Line
	3300 3700 2900 3700
Wire Wire Line
	2900 7500 3400 7500
Wire Wire Line
	3400 3600 2900 3600
Wire Wire Line
	3400 3600 3400 7500
Wire Wire Line
	2900 7600 3500 7600
Wire Wire Line
	3500 7600 3500 3500
Wire Wire Line
	3500 3500 2900 3500
Wire Wire Line
	2900 7700 3600 7700
Wire Wire Line
	3600 7700 3600 3400
Wire Wire Line
	3600 3400 2900 3400
Wire Wire Line
	2900 7800 3700 7800
Wire Wire Line
	3700 7800 3700 3300
Wire Wire Line
	3700 3300 2900 3300
$Comp
L 74xx:74LS245 U?
U 1 1 5C215091
P 5000 1700
F 0 "U?" H 5000 2678 50  0000 C CNN
F 1 "74LS245" H 5000 2587 50  0000 C CNN
F 2 "" H 5000 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5000 1700 50  0001 C CNN
	1    5000 1700
	1    0    0    -1  
$EndComp
Text GLabel 1900 4000 0    50   3State ~ 0
W0
Text GLabel 1900 3900 0    50   3State ~ 0
W1
Text GLabel 1900 3800 0    50   3State ~ 0
W2
Text GLabel 1900 3700 0    50   3State ~ 0
W3
Text GLabel 1900 3600 0    50   3State ~ 0
W4
Text GLabel 1900 3500 0    50   3State ~ 0
W5
Text GLabel 1900 3400 0    50   3State ~ 0
W6
Text GLabel 1900 3300 0    50   3State ~ 0
W7
Text GLabel 4500 1900 0    50   3State ~ 0
W8
Text GLabel 4500 1800 0    50   3State ~ 0
W9
Text GLabel 4500 1700 0    50   3State ~ 0
W10
Text GLabel 4500 1600 0    50   3State ~ 0
W11
Text GLabel 4500 1500 0    50   3State ~ 0
W12
Text GLabel 4500 1400 0    50   3State ~ 0
W13
Text GLabel 4500 1300 0    50   3State ~ 0
W14
Text GLabel 4500 1200 0    50   3State ~ 0
W15
Text GLabel 1900 5400 0    50   3State ~ 0
W0
Text GLabel 1900 5500 0    50   3State ~ 0
W1
Text GLabel 1900 5600 0    50   3State ~ 0
W2
Text GLabel 1900 5700 0    50   3State ~ 0
W3
Text GLabel 1900 7500 0    50   3State ~ 0
W4
Text GLabel 1900 7600 0    50   3State ~ 0
W5
Text GLabel 1900 7700 0    50   3State ~ 0
W6
Text GLabel 1900 7800 0    50   3State ~ 0
W7
Text GLabel 4500 3300 0    50   3State ~ 0
W8
Text GLabel 4500 3400 0    50   3State ~ 0
W9
Text GLabel 4500 3500 0    50   3State ~ 0
W10
Text GLabel 4500 3600 0    50   3State ~ 0
W11
Text GLabel 4500 5400 0    50   3State ~ 0
W12
Text GLabel 4500 5500 0    50   3State ~ 0
W13
Text GLabel 4500 5600 0    50   3State ~ 0
W14
Text GLabel 4500 5700 0    50   3State ~ 0
W15
Text HLabel 1900 8300 0    50   Input ~ 0
CLK
Text HLabel 4500 6200 0    50   Input ~ 0
CLK
Text HLabel 1900 6200 0    50   Input ~ 0
CLK
Wire Wire Line
	4500 3900 4500 4000
Wire Wire Line
	4500 6000 4500 6100
Wire Wire Line
	1900 6000 1900 6100
Wire Wire Line
	1900 8100 1900 8200
Wire Wire Line
	2900 5900 3000 5900
Wire Wire Line
	3000 5900 3000 6800
Wire Wire Line
	3000 6800 1600 6800
Wire Wire Line
	1600 6800 1600 8100
Wire Wire Line
	1600 8100 1900 8100
Connection ~ 1900 8100
Wire Wire Line
	2900 8000 3900 8000
Wire Wire Line
	3900 3900 3900 8000
Connection ~ 4500 3900
Wire Wire Line
	5500 3800 5600 3800
Wire Wire Line
	5600 3800 5600 4700
Wire Wire Line
	4000 4700 4000 6000
Connection ~ 4500 6000
Text GLabel 2400 8800 0    50   Input ~ 0
GND
Text GLabel 5000 6700 0    50   Input ~ 0
GND
Text GLabel 2400 6700 0    50   Input ~ 0
GND
Text GLabel 2400 4600 0    50   Input ~ 0
GND
Text GLabel 5000 4600 0    50   Input ~ 0
GND
Text GLabel 1900 4300 0    50   Input ~ 0
OC_OUT
Text GLabel 4500 2200 0    50   Input ~ 0
PC_OUT
Text GLabel 1900 4200 0    50   Input ~ 0
GND
Text GLabel 4500 2100 0    50   Input ~ 0
GND
Text GLabel 2400 3000 0    50   Input ~ 0
VCC
Text GLabel 5000 900  0    50   Input ~ 0
VCC
Text GLabel 5000 3000 0    50   Input ~ 0
VCC
Text GLabel 5000 5100 0    50   Input ~ 0
VCC
Text GLabel 5000 2500 0    50   Input ~ 0
GND
Text GLabel 2400 5100 0    50   Input ~ 0
VCC
Text GLabel 2400 7200 0    50   Input ~ 0
VCC
Text HLabel 1900 8500 0    50   Input ~ 0
PC_CLR
Text HLabel 4500 6400 0    50   Input ~ 0
PC_CLR
Text HLabel 4500 4300 0    50   Input ~ 0
PC_CLR
Text HLabel 1900 6400 0    50   Input ~ 0
PC_CLR
Text HLabel 1900 5900 0    50   Input ~ 0
PC_LD
Text HLabel 4500 3800 0    50   Input ~ 0
PC_LD
Text HLabel 4500 5900 0    50   Input ~ 0
PC_LD
Wire Wire Line
	3900 3900 4500 3900
Wire Wire Line
	4000 4700 5600 4700
Wire Wire Line
	4000 6000 4500 6000
Text HLabel 1900 6000 0    50   Input ~ 0
PC_EN
Wire Bus Line
	1000 1100 1000 4100
Wire Wire Line
	4500 1200 1100 1200
Wire Wire Line
	4500 1300 1100 1300
Wire Wire Line
	4500 1400 1100 1400
Wire Wire Line
	4500 1500 1100 1500
Wire Wire Line
	4500 1600 1100 1600
Wire Wire Line
	4500 1700 1100 1700
Wire Wire Line
	4500 1800 1100 1800
Wire Wire Line
	4500 1900 1100 1900
Wire Wire Line
	1900 3300 1100 3300
Wire Wire Line
	1900 3400 1100 3400
Wire Wire Line
	1900 3500 1100 3500
Wire Wire Line
	1900 3600 1100 3600
Wire Wire Line
	1900 3700 1100 3700
Wire Wire Line
	1900 3800 1100 3800
Wire Wire Line
	1900 3900 1100 3900
Wire Wire Line
	1900 4000 1100 4000
Entry Wire Line
	1000 1100 1100 1200
Entry Wire Line
	1000 1200 1100 1300
Entry Wire Line
	1000 1300 1100 1400
Entry Wire Line
	1000 1400 1100 1500
Entry Wire Line
	1000 1500 1100 1600
Entry Wire Line
	1000 1600 1100 1700
Entry Wire Line
	1000 1700 1100 1800
Entry Wire Line
	1000 1800 1100 1900
Entry Wire Line
	1000 3200 1100 3300
Entry Wire Line
	1000 3300 1100 3400
Entry Wire Line
	1000 3400 1100 3500
Entry Wire Line
	1000 3500 1100 3600
Entry Wire Line
	1000 3600 1100 3700
Entry Wire Line
	1000 3700 1100 3800
Entry Wire Line
	1000 3800 1100 3900
Entry Wire Line
	1000 3900 1100 4000
Text HLabel 1000 2800 0    50   BiDi ~ 0
W_BUS
$EndSCHEMATC
