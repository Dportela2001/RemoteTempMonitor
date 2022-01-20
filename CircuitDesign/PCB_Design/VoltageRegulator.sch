EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 6000 6000
encoding utf-8
Sheet 3 7
Title "Circuito para regular la tensión "
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0108
U 1 1 61A03FAF
P 3425 3225
F 0 "#PWR0108" H 3425 2975 50  0001 C CNN
F 1 "GND" H 3430 3052 50  0000 C CNN
F 2 "" H 3425 3225 50  0001 C CNN
F 3 "" H 3425 3225 50  0001 C CNN
	1    3425 3225
	1    0    0    -1  
$EndComp
Text HLabel 850  2075 0    50   Input ~ 0
Batt
$Comp
L Device:C Steve1
U 1 1 61A07986
P 1525 2625
F 0 "Steve1" H 1625 2675 50  0000 L CNN
F 1 "47u" H 1640 2580 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 1563 2475 50  0001 C CNN
F 3 "~" H 1525 2625 50  0001 C CNN
	1    1525 2625
	1    0    0    -1  
$EndComp
Connection ~ 2475 2075
Wire Wire Line
	2475 2075 2525 2075
Wire Wire Line
	2525 2175 2475 2175
Wire Wire Line
	2525 2625 2475 2625
Wire Wire Line
	2475 2075 2475 2175
Connection ~ 2475 2175
Wire Wire Line
	2475 2175 2475 2625
$Comp
L power:GND #PWR0109
U 1 1 61A104AE
P 1525 3225
F 0 "#PWR0109" H 1525 2975 50  0001 C CNN
F 1 "GND" H 1530 3052 50  0000 C CNN
F 2 "" H 1525 3225 50  0001 C CNN
F 3 "" H 1525 3225 50  0001 C CNN
	1    1525 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 2775 1525 3225
$Comp
L Device:R R_rLed1
U 1 1 61A117C1
P 2025 2625
F 0 "R_rLed1" V 1925 2475 50  0000 L CNN
F 1 "270" V 2025 2525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1955 2625 50  0001 C CNN
F 3 "~" H 2025 2625 50  0001 C CNN
	1    2025 2625
	1    0    0    -1  
$EndComp
$Comp
L Device:LED FlagLED_R1
U 1 1 61A2093A
P 2025 2275
F 0 "FlagLED_R1" H 2175 2375 50  0000 R CNN
F 1 "LED" V 1973 2157 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2025 2275 50  0001 C CNN
F 3 "~" H 2025 2275 50  0001 C CNN
	1    2025 2275
	0    -1   -1   0   
$EndComp
$Comp
L PCB_Design-rescue:MIC37303YME-MIC37303YME-TR IC
U 1 1 61A02BF7
P 2525 2075
AR Path="/61A02BF7" Ref="IC"  Part="1" 
AR Path="/619FB45F/61A02BF7" Ref="IC1"  Part="1" 
F 0 "IC1" H 3225 2340 50  0000 C CNN
F 1 "MIC37303YME" H 3225 2249 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm" H 3175 3225 50  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en581526" H 3175 3125 50  0001 L CNN
F 4 "LDO Voltage Regulators 3A, Low Voltage uCap LDO Regulator" H 3175 3025 50  0001 L CNN "Description"
F 5 "1.68" H 3175 2925 50  0001 L CNN "Height"
F 6 "Microchip" H 3175 2825 50  0001 L CNN "Manufacturer_Name"
F 7 "MIC37303YME-TR" H 3175 2725 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "998-MIC37303YMETR" H 3175 2625 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Micrel/MIC37303YME-TR?qs=U6T8BxXiZAWlIGbYv%252BgK%252BA%3D%3D" H 3175 2525 50  0001 L CNN "Mouser Price/Stock"
F 10 "MIC37303YME-TR" H 3175 2425 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/mic37303yme-tr/microchip-technology?region=nac" H 3175 2325 50  0001 L CNN "Arrow Price/Stock"
	1    2525 2075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 61A038ED
P 3025 3225
F 0 "#PWR0110" H 3025 2975 50  0001 C CNN
F 1 "GND" H 3030 3052 50  0000 C CNN
F 2 "" H 3025 3225 50  0001 C CNN
F 3 "" H 3025 3225 50  0001 C CNN
	1    3025 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 2075 2025 2125
Wire Wire Line
	2025 2075 2475 2075
Wire Wire Line
	2025 2425 2025 2475
Wire Wire Line
	2025 2775 2025 2825
Wire Wire Line
	2025 2825 2525 2825
Wire Wire Line
	850  2075 950  2075
Wire Wire Line
	1525 2075 1525 2475
Wire Wire Line
	2025 2075 1525 2075
Connection ~ 2025 2075
Connection ~ 1525 2075
$Comp
L Device:R R1
U 1 1 61A4DE45
P 4050 2400
F 0 "R1" H 4120 2446 50  0000 L CNN
F 1 "6.98k" H 4120 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3980 2400 50  0001 C CNN
F 3 "~" H 4050 2400 50  0001 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61A4EE6F
P 4050 2850
F 0 "R2" H 4120 2896 50  0000 L CNN
F 1 "4.02k" H 4120 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3980 2850 50  0001 C CNN
F 3 "~" H 4050 2850 50  0001 C CNN
	1    4050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 2625 4050 2625
Wire Wire Line
	4050 2625 4050 2700
Wire Wire Line
	4050 2625 4050 2550
Connection ~ 4050 2625
Wire Wire Line
	3925 2075 4050 2075
Wire Wire Line
	4050 2075 4050 2175
Wire Wire Line
	3925 2175 4050 2175
Connection ~ 4050 2175
Wire Wire Line
	4050 2175 4050 2250
$Comp
L Device:C Rogers1
U 1 1 61A5751A
P 4525 2600
F 0 "Rogers1" H 4640 2646 50  0000 L CNN
F 1 "47u" H 4640 2555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.9" H 4563 2450 50  0001 C CNN
F 3 "~" H 4525 2600 50  0001 C CNN
	1    4525 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2075 4525 2075
Wire Wire Line
	4525 2075 4525 2450
Connection ~ 4050 2075
$Comp
L power:GND #PWR0111
U 1 1 61A59489
P 4050 3225
F 0 "#PWR0111" H 4050 2975 50  0001 C CNN
F 1 "GND" H 4055 3052 50  0000 C CNN
F 2 "" H 4050 3225 50  0001 C CNN
F 3 "" H 4050 3225 50  0001 C CNN
	1    4050 3225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61A59B9D
P 4525 3225
F 0 "#PWR0112" H 4525 2975 50  0001 C CNN
F 1 "GND" H 4530 3052 50  0000 C CNN
F 2 "" H 4525 3225 50  0001 C CNN
F 3 "" H 4525 3225 50  0001 C CNN
	1    4525 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3000 4050 3225
Wire Wire Line
	4525 3225 4525 2750
Wire Wire Line
	4525 2075 4925 2075
Connection ~ 4525 2075
Text HLabel 4925 2075 2    50   Output ~ 0
3.34V
Wire Wire Line
	1350 2075 1525 2075
$Comp
L Switch:SW_Push SW_ONOFF1
U 1 1 61C32C50
P 1150 2075
F 0 "SW_ONOFF1" H 1150 2360 50  0000 C CNN
F 1 "SW_Push" H 1150 2269 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770866-x_1x02_P4.14mm_Vertical" H 1150 2275 50  0001 C CNN
F 3 "~" H 1150 2275 50  0001 C CNN
	1    1150 2075
	1    0    0    -1  
$EndComp
$EndSCHEMATC
