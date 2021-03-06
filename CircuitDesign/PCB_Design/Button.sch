EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5906 5906
encoding utf-8
Sheet 5 7
Title "Debouncing circuit "
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push BT1
U 1 1 61AF23CF
P 2550 2650
AR Path="/61AF1821/61AF23CF" Ref="BT1"  Part="1" 
AR Path="/61B0D93C/61AF23CF" Ref="BT3"  Part="1" 
AR Path="/61B0DE61/61AF23CF" Ref="BT2"  Part="1" 
AR Path="/61B0E45E/61AF23CF" Ref="BT4"  Part="1" 
F 0 "BT4" V 2596 2602 50  0000 R CNN
F 1 "SW_Push" V 2505 2602 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 2550 2850 50  0001 C CNN
F 3 "~" H 2550 2850 50  0001 C CNN
	1    2550 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R Rd1
U 1 1 61AF40E8
P 3000 2450
AR Path="/61AF1821/61AF40E8" Ref="Rd1"  Part="1" 
AR Path="/61B0D93C/61AF40E8" Ref="Rd3"  Part="1" 
AR Path="/61B0DE61/61AF40E8" Ref="Rd2"  Part="1" 
AR Path="/61B0E45E/61AF40E8" Ref="Rd4"  Part="1" 
F 0 "Rd4" V 2793 2450 50  0000 C CNN
F 1 "1k" V 2884 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2930 2450 50  0001 C CNN
F 3 "~" H 3000 2450 50  0001 C CNN
	1    3000 2450
	0    1    1    0   
$EndComp
$Comp
L Device:C Cd1
U 1 1 61AF4C44
P 3400 2650
AR Path="/61AF1821/61AF4C44" Ref="Cd1"  Part="1" 
AR Path="/61B0D93C/61AF4C44" Ref="Cd3"  Part="1" 
AR Path="/61B0DE61/61AF4C44" Ref="Cd2"  Part="1" 
AR Path="/61B0E45E/61AF4C44" Ref="Cd4"  Part="1" 
F 0 "Cd4" H 3285 2604 50  0000 R CNN
F 1 "0.1u" H 3285 2695 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3438 2500 50  0001 C CNN
F 3 "~" H 3400 2650 50  0001 C CNN
	1    3400 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R Rpd1
U 1 1 61AFF83B
P 2550 2150
AR Path="/61AF1821/61AFF83B" Ref="Rpd1"  Part="1" 
AR Path="/61B0D93C/61AFF83B" Ref="Rpd3"  Part="1" 
AR Path="/61B0DE61/61AFF83B" Ref="Rpd2"  Part="1" 
AR Path="/61B0E45E/61AFF83B" Ref="Rpd4"  Part="1" 
F 0 "Rpd4" H 2480 2104 50  0000 R CNN
F 1 "10k" H 2480 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2480 2150 50  0001 C CNN
F 3 "~" H 2550 2150 50  0001 C CNN
	1    2550 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 2450 2850 2450
Wire Wire Line
	3150 2450 3400 2450
Wire Wire Line
	2550 2450 2550 2300
Connection ~ 2550 2450
$Comp
L power:GND #PWR0117
U 1 1 61B006D1
P 3400 2850
AR Path="/61AF1821/61B006D1" Ref="#PWR0117"  Part="1" 
AR Path="/61B0D93C/61B006D1" Ref="#PWR0119"  Part="1" 
AR Path="/61B0DE61/61B006D1" Ref="#PWR0113"  Part="1" 
AR Path="/61B0E45E/61B006D1" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0119" H 3400 2600 50  0001 C CNN
F 1 "GND" H 3405 2677 50  0000 C CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0001 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2800 3400 2850
Wire Wire Line
	3400 2450 3400 2500
$Comp
L power:GND #PWR0118
U 1 1 61B01C2D
P 2550 2850
AR Path="/61AF1821/61B01C2D" Ref="#PWR0118"  Part="1" 
AR Path="/61B0D93C/61B01C2D" Ref="#PWR0120"  Part="1" 
AR Path="/61B0DE61/61B01C2D" Ref="#PWR0114"  Part="1" 
AR Path="/61B0E45E/61B01C2D" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0120" H 2550 2600 50  0001 C CNN
F 1 "GND" H 2555 2677 50  0000 C CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
Text HLabel 2550 1950 1    50   Input ~ 0
3.3v
Wire Wire Line
	2550 1950 2550 2000
Text HLabel 3800 2450 2    50   Output ~ 0
Sw
Wire Wire Line
	3400 2450 3800 2450
Connection ~ 3400 2450
$EndSCHEMATC
