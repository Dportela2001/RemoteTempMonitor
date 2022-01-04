EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5984 6299
encoding utf-8
Sheet 2 7
Title "Circuito para cargar la bateria"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C1
U 1 1 61A1D2A3
P 835 3205
F 0 "C1" H 950 3251 50  0000 L CNN
F 1 "10u" H 950 3160 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 873 3055 50  0001 C CNN
F 3 "~" H 835 3205 50  0001 C CNN
	1    835  3205
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_gLED1
U 1 1 61A1D2AC
P 1645 3815
F 0 "R_gLED1" V 1555 3675 50  0000 L CNN
F 1 "1k" V 1645 3765 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1575 3815 50  0001 C CNN
F 3 "~" H 1645 3815 50  0001 C CNN
	1    1645 3815
	0    1    1    0   
$EndComp
$Comp
L Device:LED gLED1
U 1 1 61A1D2B4
P 1165 3230
F 0 "gLED1" H 1260 3135 50  0000 R CNN
F 1 "LED" V 1113 3112 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1165 3230 50  0001 C CNN
F 3 "~" H 1165 3230 50  0001 C CNN
	1    1165 3230
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED rLED1
U 1 1 61A1D2C5
P 1460 3230
F 0 "rLED1" H 1470 3140 50  0000 C CNN
F 1 "LED" H 1453 3066 50  0001 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1460 3230 50  0001 C CNN
F 3 "~" H 1460 3230 50  0001 C CNN
	1    1460 3230
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_PROG1
U 1 1 61A1D314
P 3210 3175
F 0 "R_PROG1" V 3125 3015 50  0000 L CNN
F 1 "R" V 3215 3145 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3140 3175 50  0001 C CNN
F 3 "~" H 3210 3175 50  0001 C CNN
	1    3210 3175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61A1D2EE
P 3495 3185
F 0 "C2" H 3610 3231 50  0000 L CNN
F 1 "10u" H 3610 3140 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3533 3035 50  0001 C CNN
F 3 "~" H 3495 3185 50  0001 C CNN
	1    3495 3185
	1    0    0    -1  
$EndComp
Text HLabel 5035 2815 2    50   Input ~ 0
Batt
$Comp
L Device:R R_rLED1
U 1 1 61A1D2CB
P 1645 3615
F 0 "R_rLED1" V 1720 3485 50  0000 L CNN
F 1 "1k" V 1640 3570 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1575 3615 50  0001 C CNN
F 3 "~" H 1645 3615 50  0001 C CNN
	1    1645 3615
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1460 3615 1460 3380
Wire Wire Line
	1460 3080 1460 2965
Wire Wire Line
	1460 2965 1795 2965
Wire Wire Line
	1165 3380 1165 3815
Wire Wire Line
	1165 3815 1495 3815
Wire Wire Line
	835  2815 835  3055
Connection ~ 1165 2815
Wire Wire Line
	1165 2815 1165 3080
Wire Wire Line
	1795 2815 1165 2815
$Comp
L PCB_Design-rescue:TP4056-TP4056 J?
U 1 1 61A1D2D9
P 1795 2815
AR Path="/61A1D2D9" Ref="J?"  Part="1" 
AR Path="/619FECCC/61A1D2D9" Ref="J1"  Part="1" 
F 0 "J1" H 2250 2455 50  0000 C CNN
F 1 "TP4056" H 2345 2370 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm" H 3045 2915 50  0001 L CNN
F 3 "https://dlnmh9ip6v2uc.cloudfront.net/datasheets/Prototyping/TP4056.pdf" H 3045 2815 50  0001 L CNN
F 4 "1A Standalone Linear Li-lon Battery Charger, SOP-8" H 3045 2715 50  0001 L CNN "Description"
F 5 "1.75" H 3045 2615 50  0001 L CNN "Height"
F 6 "NanJing Top Power" H 3045 2515 50  0001 L CNN "Manufacturer_Name"
F 7 "TP4056" H 3045 2415 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3045 2315 50  0001 L CNN "Mouser Part Number"
F 9 "" H 3045 2215 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3045 2115 50  0001 L CNN "Arrow Part Number"
F 11 "" H 3045 2015 50  0001 L CNN "Arrow Price/Stock"
	1    1795 2815
	1    0    0    -1  
$EndComp
Wire Wire Line
	2995 2965 3210 2965
Wire Wire Line
	3210 2965 3210 3025
Wire Wire Line
	3210 3325 3210 3615
Wire Wire Line
	2995 3615 3210 3615
Connection ~ 3210 3615
Wire Wire Line
	3210 3615 3210 3815
Wire Wire Line
	2995 3815 3210 3815
Connection ~ 3210 3815
Wire Wire Line
	3495 3035 3495 2815
Wire Wire Line
	3495 2815 2995 2815
Wire Wire Line
	3495 4160 3210 4160
Wire Wire Line
	5035 2815 4535 2815
Wire Wire Line
	3495 2815 3495 2820
Connection ~ 3495 2815
$Comp
L power:GND #PWR0107
U 1 1 61A13CA5
P 2395 4205
F 0 "#PWR0107" H 2395 3955 50  0001 C CNN
F 1 "GND" H 2400 4032 50  0000 C CNN
F 2 "" H 2395 4205 50  0001 C CNN
F 3 "" H 2395 4205 50  0001 C CNN
	1    2395 4205
	1    0    0    -1  
$EndComp
Wire Wire Line
	1165 2815 835  2815
Wire Wire Line
	1495 3615 1460 3615
Wire Wire Line
	2395 4115 2395 4160
Wire Wire Line
	3210 4160 2395 4160
Wire Wire Line
	3210 3815 3210 4160
Connection ~ 2395 4160
Wire Wire Line
	2395 4160 2395 4205
Wire Wire Line
	2395 4160 835  4160
Wire Wire Line
	835  3355 835  4160
Connection ~ 3210 4160
$Comp
L Device:Battery_Cell Battery1
U 1 1 61C3E04D
P 3945 3220
F 0 "Battery1" H 4063 3270 50  0000 L CNN
F 1 "Battery_Cell" H 4063 3225 50  0001 L CNN
F 2 "Battery:BatteryHolder_MPD_BH-18650-PC2" V 3945 3280 50  0001 C CNN
F 3 "~" V 3945 3280 50  0001 C CNN
	1    3945 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	3495 3335 3495 4160
Wire Wire Line
	3945 3320 3945 4160
Wire Wire Line
	3945 4160 3495 4160
Connection ~ 3495 4160
$Comp
L Device:Battery_Cell Battery2
U 1 1 61CDA2FD
P 4535 3220
F 0 "Battery2" H 4653 3270 50  0000 L CNN
F 1 "Battery_Cell" H 4653 3225 50  0001 L CNN
F 2 "Battery:BatteryHolder_MPD_BH-18650-PC2" V 4535 3280 50  0001 C CNN
F 3 "~" V 4535 3280 50  0001 C CNN
	1    4535 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	3945 2815 3945 3020
Connection ~ 3945 2815
Wire Wire Line
	3945 2815 3495 2815
Wire Wire Line
	4535 3020 4535 2815
Connection ~ 4535 2815
Wire Wire Line
	4535 2815 3945 2815
Wire Wire Line
	4535 3320 4535 4160
Wire Wire Line
	4535 4160 3945 4160
Connection ~ 3945 4160
$Comp
L Connector:USB_B_Micro J2
U 1 1 61D5126A
P 1365 1560
F 0 "J2" V 998 1503 50  0000 C CNN
F 1 "USB_B_Micro" V 1089 1503 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1515 1510 50  0001 C CNN
F 3 "~" H 1515 1510 50  0001 C CNN
	1    1365 1560
	0    -1   1    0   
$EndComp
Wire Wire Line
	1165 1860 1165 2815
NoConn ~ 1365 1860
NoConn ~ 1465 1860
NoConn ~ 1565 1860
$Comp
L power:GND #PWR0123
U 1 1 61D5A238
P 1920 1710
F 0 "#PWR0123" H 1920 1460 50  0001 C CNN
F 1 "GND" H 1925 1537 50  0000 C CNN
F 2 "" H 1920 1710 50  0001 C CNN
F 3 "" H 1920 1710 50  0001 C CNN
	1    1920 1710
	1    0    0    -1  
$EndComp
Wire Wire Line
	1920 1460 1765 1460
Wire Wire Line
	1765 1560 1920 1560
Wire Wire Line
	1920 1460 1920 1560
Connection ~ 1920 1560
Wire Wire Line
	1920 1560 1920 1710
$EndSCHEMATC
