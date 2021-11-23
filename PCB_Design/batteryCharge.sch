EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 6050 3750
Wire Wire Line
	5000 2900 4150 2900
Connection ~ 5000 2900
Wire Wire Line
	4150 2900 4150 3100
$Comp
L power:GND #PWR?
U 1 1 61A1D29D
P 4150 3400
F 0 "#PWR?" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4155 3227 50  0000 C CNN
F 2 "" H 4150 3400 50  0001 C CNN
F 3 "" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A1D2A3
P 4150 3250
F 0 "C?" H 4265 3296 50  0000 L CNN
F 1 "10u" H 4265 3205 50  0000 L CNN
F 2 "" H 4188 3100 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3150 6750 3150
Wire Wire Line
	6950 3850 6950 3150
Wire Wire Line
	5300 3850 6950 3850
$Comp
L Device:R R_gLED?
U 1 1 61A1D2AC
P 5300 3700
F 0 "R_gLED?" H 5370 3746 50  0000 L CNN
F 1 "1k" H 5370 3655 50  0000 L CNN
F 2 "" V 5230 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3250 5050 3250
Connection ~ 5300 3250
$Comp
L Device:LED gLED?
U 1 1 61A1D2B4
P 5300 3400
F 0 "gLED?" V 5293 3282 50  0000 R CNN
F 1 "LED" V 5248 3282 50  0001 R CNN
F 2 "" H 5300 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	0    -1   -1   0   
$EndComp
Connection ~ 6750 2650
Connection ~ 5050 2900
Wire Wire Line
	5400 2650 6750 2650
Wire Wire Line
	5050 2900 5400 2900
Wire Wire Line
	7500 3050 6750 3050
Wire Wire Line
	7500 3000 7500 3050
Wire Wire Line
	7500 2650 7500 2700
Wire Wire Line
	7300 2650 7500 2650
Wire Wire Line
	6750 2650 7000 2650
Wire Wire Line
	6750 2950 6750 2650
$Comp
L Device:LED rLED?
U 1 1 61A1D2C5
P 7150 2650
F 0 "rLED?" H 7143 2487 50  0000 C CNN
F 1 "LED" H 7143 2486 50  0001 C CNN
F 2 "" H 7150 2650 50  0001 C CNN
F 3 "~" H 7150 2650 50  0001 C CNN
	1    7150 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_rLED?
U 1 1 61A1D2CB
P 7500 2850
F 0 "R_rLED?" H 7570 2896 50  0000 L CNN
F 1 "1k" H 7570 2805 50  0000 L CNN
F 2 "" V 7430 2850 50  0001 C CNN
F 3 "~" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2900 5050 3250
$Comp
L power:GND #PWR?
U 1 1 61A1D2E0
P 7350 3550
F 0 "#PWR?" H 7350 3300 50  0001 C CNN
F 1 "GND" H 7355 3377 50  0000 C CNN
F 2 "" H 7350 3550 50  0001 C CNN
F 3 "" H 7350 3550 50  0001 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2900 5000 2900
Wire Wire Line
	5350 3250 5300 3250
$Comp
L Device:R R_5v?
U 1 1 61A1D2FE
P 5000 2750
F 0 "R_5v?" H 5070 2796 50  0000 L CNN
F 1 "0.4" H 5070 2705 50  0000 L CNN
F 2 "" V 4930 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3150 5000 3400
Wire Wire Line
	5350 3150 5000 3150
$Comp
L power:GND #PWR?
U 1 1 61A1D306
P 5000 3400
F 0 "#PWR?" H 5000 3150 50  0001 C CNN
F 1 "GND" H 5005 3227 50  0000 C CNN
F 2 "" H 5000 3400 50  0001 C CNN
F 3 "" H 5000 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A1D30C
P 4600 3400
F 0 "#PWR?" H 4600 3150 50  0001 C CNN
F 1 "GND" H 4605 3227 50  0000 C CNN
F 2 "" H 4600 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3050 4600 3100
Wire Wire Line
	5350 3050 4600 3050
$Comp
L Device:R R_PROG?
U 1 1 61A1D314
P 4600 3250
F 0 "R_PROG?" H 4670 3296 50  0000 L CNN
F 1 "R" H 4670 3205 50  0000 L CNN
F 2 "" V 4530 3250 50  0001 C CNN
F 3 "~" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61A1D31B
P 5000 2600
F 0 "#PWR?" H 5000 2450 50  0001 C CNN
F 1 "+5V" H 5015 2773 50  0000 C CNN
F 2 "" H 5000 2600 50  0001 C CNN
F 3 "" H 5000 2600 50  0001 C CNN
	1    5000 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61A1D2EE
P 7350 3400
F 0 "C?" H 7465 3446 50  0000 L CNN
F 1 "10u" H 7465 3355 50  0000 L CNN
F 2 "" H 7388 3250 50  0001 C CNN
F 3 "~" H 7350 3400 50  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
Text HLabel 8400 3250 2    50   Input ~ 0
Batt
Wire Wire Line
	7350 3250 8400 3250
Wire Wire Line
	7350 3250 6750 3250
Connection ~ 7350 3250
Wire Wire Line
	5400 2900 5400 2650
$Comp
L PCB_Design-rescue:TP4056-TP4056 J?
U 1 1 61A1D2D9
P 5350 2950
AR Path="/61A1D2D9" Ref="J?"  Part="1" 
AR Path="/619FECCC/61A1D2D9" Ref="J?"  Part="1" 
F 0 "J?" H 6050 3215 50  0000 C CNN
F 1 "TP4056" H 6050 3124 50  0000 C CNN
F 2 "SOIC127P600X175-9N" H 6600 3050 50  0001 L CNN
F 3 "https://dlnmh9ip6v2uc.cloudfront.net/datasheets/Prototyping/TP4056.pdf" H 6600 2950 50  0001 L CNN
F 4 "1A Standalone Linear Li-lon Battery Charger, SOP-8" H 6600 2850 50  0001 L CNN "Description"
F 5 "1.75" H 6600 2750 50  0001 L CNN "Height"
F 6 "NanJing Top Power" H 6600 2650 50  0001 L CNN "Manufacturer_Name"
F 7 "TP4056" H 6600 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 6600 2450 50  0001 L CNN "Mouser Part Number"
F 9 "" H 6600 2350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6600 2250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 6600 2150 50  0001 L CNN "Arrow Price/Stock"
	1    5350 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A6C795
P 5350 2950
F 0 "#PWR?" H 5350 2700 50  0001 C CNN
F 1 "GND" H 5355 2777 50  0000 C CNN
F 2 "" H 5350 2950 50  0001 C CNN
F 3 "" H 5350 2950 50  0001 C CNN
	1    5350 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
