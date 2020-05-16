EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L tasseract:TLV62568DBV U1
U 1 1 5EB95112
P 1250 1000
F 0 "U1" H 1250 1367 50  0000 C CNN
F 1 "TLV62568DBV" H 1250 1276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1300 750 50  0001 L CIN
F 3 "" H 1000 1450 50  0001 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:+5V #PWR?
U 1 1 5EB95CD5
P 700 900
F 0 "#PWR?" H 700 750 50  0001 C CNN
F 1 "+5V" H 715 1073 50  0000 C CNN
F 2 "" H 700 900 50  0001 C CNN
F 3 "" H 700 900 50  0001 C CNN
	1    700  900 
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C1
U 1 1 5EB9642C
P 700 1000
F 0 "C1" H 792 1046 50  0000 L CNN
F 1 "22uF" H 792 955 50  0000 L CNN
F 2 "" H 700 1000 50  0001 C CNN
F 3 "" H 700 1000 50  0001 C CNN
	1    700  1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:GND #PWR?
U 1 1 5EB96E81
P 700 1100
F 0 "#PWR?" H 700 850 50  0001 C CNN
F 1 "GND" H 705 927 50  0000 C CNN
F 2 "" H 700 1100 50  0001 C CNN
F 3 "" H 700 1100 50  0001 C CNN
	1    700  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  900  700  900 
Connection ~ 700  900 
Wire Wire Line
	950  1000 950  900 
Connection ~ 950  900 
$Comp
L tasseract:L L1
U 1 1 5EB979CD
P 1700 900
F 0 "L1" V 1890 900 50  0000 C CNN
F 1 "2.2uH" V 1799 900 50  0000 C CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0001 C CNN
	1    1700 900 
	0    -1   -1   0   
$EndComp
$Comp
L tasseract:C_Small C2
U 1 1 5EB986CC
P 1850 1000
F 0 "C2" H 1942 1046 50  0000 L CNN
F 1 "470pF" H 1942 955 50  0000 L CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R1
U 1 1 5EB9922E
P 2250 1000
F 0 "R1" H 2318 1046 50  0000 L CNN
F 1 "15k" H 2318 955 50  0000 L CNN
F 2 "" H 2250 1000 50  0001 C CNN
F 3 "" H 2250 1000 50  0001 C CNN
	1    2250 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R2
U 1 1 5EB99F7E
P 2600 1100
F 0 "R2" V 2500 1100 50  0000 C CNN
F 1 "18k" V 2700 1100 50  0000 C CNN
F 2 "" H 2600 1100 50  0001 C CNN
F 3 "" H 2600 1100 50  0001 C CNN
	1    2600 1100
	0    1    1    0   
$EndComp
$Comp
L tasseract:C_Small C3
U 1 1 5EB9AD51
P 2950 1000
F 0 "C3" H 3042 1046 50  0000 L CNN
F 1 "22uF" H 3042 955 50  0000 L CNN
F 2 "" H 2950 1000 50  0001 C CNN
F 3 "" H 2950 1000 50  0001 C CNN
	1    2950 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C4
U 1 1 5EB9C1F3
P 3300 1000
F 0 "C4" H 3392 1046 50  0000 L CNN
F 1 "22uF" H 3392 955 50  0000 L CNN
F 2 "" H 3300 1000 50  0001 C CNN
F 3 "" H 3300 1000 50  0001 C CNN
	1    3300 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C5
U 1 1 5EB9C652
P 3650 1000
F 0 "C5" H 3742 1046 50  0000 L CNN
F 1 "2.2uF" H 3742 955 50  0000 L CNN
F 2 "" H 3650 1000 50  0001 C CNN
F 3 "" H 3650 1000 50  0001 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C6
U 1 1 5EB9CB7C
P 4050 1000
F 0 "C6" H 4142 1046 50  0000 L CNN
F 1 "2.2uF" H 4142 955 50  0000 L CNN
F 2 "" H 4050 1000 50  0001 C CNN
F 3 "" H 4050 1000 50  0001 C CNN
	1    4050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 900  2250 900 
Connection ~ 1850 900 
Connection ~ 2250 900 
Wire Wire Line
	2250 900  2950 900 
Connection ~ 2950 900 
Wire Wire Line
	2950 900  3300 900 
Connection ~ 3300 900 
Wire Wire Line
	3300 900  3650 900 
Connection ~ 3650 900 
Wire Wire Line
	3650 900  4050 900 
Wire Wire Line
	2700 1100 2950 1100
Connection ~ 2950 1100
Wire Wire Line
	2950 1100 3300 1100
Connection ~ 3300 1100
Wire Wire Line
	3300 1100 3650 1100
Connection ~ 3650 1100
Wire Wire Line
	3650 1100 4050 1100
Wire Wire Line
	2500 1100 2250 1100
Wire Wire Line
	1650 1100 1650 1000
Wire Wire Line
	1650 1000 1550 1000
Connection ~ 1850 1100
Wire Wire Line
	1850 1100 1650 1100
Connection ~ 2250 1100
Wire Wire Line
	2250 1100 1850 1100
$Comp
L tasseract:GND #PWR?
U 1 1 5EBAD060
P 1250 1300
F 0 "#PWR?" H 1250 1050 50  0001 C CNN
F 1 "GND" H 1255 1127 50  0000 C CNN
F 2 "" H 1250 1300 50  0001 C CNN
F 3 "" H 1250 1300 50  0001 C CNN
	1    1250 1300
	1    0    0    -1  
$EndComp
$Comp
L tasseract:TLV62568DBV U2
U 1 1 5EBB886C
P 1250 1950
F 0 "U2" H 1250 2317 50  0000 C CNN
F 1 "TLV62568DBV" H 1250 2226 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1300 1700 50  0001 L CIN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1250 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:+5V #PWR?
U 1 1 5EBB8872
P 700 1850
F 0 "#PWR?" H 700 1700 50  0001 C CNN
F 1 "+5V" H 715 2023 50  0000 C CNN
F 2 "" H 700 1850 50  0001 C CNN
F 3 "" H 700 1850 50  0001 C CNN
	1    700  1850
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C7
U 1 1 5EBB8878
P 700 1950
F 0 "C7" H 792 1996 50  0000 L CNN
F 1 "22uF" H 792 1905 50  0000 L CNN
F 2 "" H 700 1950 50  0001 C CNN
F 3 "" H 700 1950 50  0001 C CNN
	1    700  1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:GND #PWR?
U 1 1 5EBB887E
P 700 2050
F 0 "#PWR?" H 700 1800 50  0001 C CNN
F 1 "GND" H 705 1877 50  0000 C CNN
F 2 "" H 700 2050 50  0001 C CNN
F 3 "" H 700 2050 50  0001 C CNN
	1    700  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1850 700  1850
Connection ~ 700  1850
Wire Wire Line
	950  1950 950  1850
Connection ~ 950  1850
$Comp
L tasseract:L L2
U 1 1 5EBB8888
P 1700 1850
F 0 "L2" V 1890 1850 50  0000 C CNN
F 1 "2.2uH" V 1799 1850 50  0000 C CNN
F 2 "" H 1700 1850 50  0001 C CNN
F 3 "" H 1700 1850 50  0001 C CNN
	1    1700 1850
	0    -1   -1   0   
$EndComp
$Comp
L tasseract:C_Small C8
U 1 1 5EBB888E
P 1850 1950
F 0 "C8" H 1942 1996 50  0000 L CNN
F 1 "470pF" H 1942 1905 50  0000 L CNN
F 2 "" H 1850 1950 50  0001 C CNN
F 3 "" H 1850 1950 50  0001 C CNN
	1    1850 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R3
U 1 1 5EBB8894
P 2250 1950
F 0 "R3" H 2318 1996 50  0000 L CNN
F 1 "15k" H 2318 1905 50  0000 L CNN
F 2 "" H 2250 1950 50  0001 C CNN
F 3 "" H 2250 1950 50  0001 C CNN
	1    2250 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R4
U 1 1 5EBB889A
P 2600 2050
F 0 "R4" V 2500 2050 50  0000 C CNN
F 1 "4.7k" V 2700 2050 50  0000 C CNN
F 2 "" H 2600 2050 50  0001 C CNN
F 3 "" H 2600 2050 50  0001 C CNN
	1    2600 2050
	0    1    1    0   
$EndComp
$Comp
L tasseract:C_Small C9
U 1 1 5EBB88A0
P 2950 1950
F 0 "C9" H 3042 1996 50  0000 L CNN
F 1 "22uF" H 3042 1905 50  0000 L CNN
F 2 "" H 2950 1950 50  0001 C CNN
F 3 "" H 2950 1950 50  0001 C CNN
	1    2950 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C10
U 1 1 5EBB88A6
P 3300 1950
F 0 "C10" H 3392 1996 50  0000 L CNN
F 1 "22uF" H 3392 1905 50  0000 L CNN
F 2 "" H 3300 1950 50  0001 C CNN
F 3 "" H 3300 1950 50  0001 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C11
U 1 1 5EBB88AC
P 3650 1950
F 0 "C11" H 3742 1996 50  0000 L CNN
F 1 "2.2uF" H 3742 1905 50  0000 L CNN
F 2 "" H 3650 1950 50  0001 C CNN
F 3 "" H 3650 1950 50  0001 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C12
U 1 1 5EBB88B2
P 4050 1950
F 0 "C12" H 4142 1996 50  0000 L CNN
F 1 "2.2uF" H 4142 1905 50  0000 L CNN
F 2 "" H 4050 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1850 2250 1850
Connection ~ 1850 1850
Connection ~ 2250 1850
Wire Wire Line
	2250 1850 2950 1850
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 3300 1850
Connection ~ 3300 1850
Wire Wire Line
	3300 1850 3650 1850
Connection ~ 3650 1850
Wire Wire Line
	3650 1850 4050 1850
Wire Wire Line
	2700 2050 2950 2050
Connection ~ 2950 2050
Wire Wire Line
	2950 2050 3300 2050
Connection ~ 3300 2050
Wire Wire Line
	3300 2050 3650 2050
Connection ~ 3650 2050
Wire Wire Line
	3650 2050 4050 2050
Wire Wire Line
	2500 2050 2250 2050
Wire Wire Line
	1650 2050 1650 1950
Wire Wire Line
	1650 1950 1550 1950
Connection ~ 1850 2050
Wire Wire Line
	1850 2050 1650 2050
Connection ~ 2250 2050
Wire Wire Line
	2250 2050 1850 2050
$Comp
L tasseract:GND #PWR?
U 1 1 5EBB88D0
P 1250 2250
F 0 "#PWR?" H 1250 2000 50  0001 C CNN
F 1 "GND" H 1255 2077 50  0000 C CNN
F 2 "" H 1250 2250 50  0001 C CNN
F 3 "" H 1250 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L tasseract:TLV62568DBV U3
U 1 1 5EBBD99C
P 1250 2900
F 0 "U3" H 1250 3267 50  0000 C CNN
F 1 "TLV62568DBV" H 1250 3176 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1300 2650 50  0001 L CIN
F 3 "" H 1000 3350 50  0001 C CNN
	1    1250 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:+5V #PWR?
U 1 1 5EBBD9A2
P 700 2800
F 0 "#PWR?" H 700 2650 50  0001 C CNN
F 1 "+5V" H 715 2973 50  0000 C CNN
F 2 "" H 700 2800 50  0001 C CNN
F 3 "" H 700 2800 50  0001 C CNN
	1    700  2800
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C13
U 1 1 5EBBD9A8
P 700 2900
F 0 "C13" H 792 2946 50  0000 L CNN
F 1 "22uF" H 792 2855 50  0000 L CNN
F 2 "" H 700 2900 50  0001 C CNN
F 3 "" H 700 2900 50  0001 C CNN
	1    700  2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:GND #PWR?
U 1 1 5EBBD9AE
P 700 3000
F 0 "#PWR?" H 700 2750 50  0001 C CNN
F 1 "GND" H 705 2827 50  0000 C CNN
F 2 "" H 700 3000 50  0001 C CNN
F 3 "" H 700 3000 50  0001 C CNN
	1    700  3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2800 700  2800
Connection ~ 700  2800
Wire Wire Line
	950  2900 950  2800
Connection ~ 950  2800
$Comp
L tasseract:L L3
U 1 1 5EBBD9B8
P 1700 2800
F 0 "L3" V 1890 2800 50  0000 C CNN
F 1 "2.2uH" V 1799 2800 50  0000 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	0    -1   -1   0   
$EndComp
$Comp
L tasseract:C_Small C14
U 1 1 5EBBD9BE
P 1850 2900
F 0 "C14" H 1942 2946 50  0000 L CNN
F 1 "470pF" H 1942 2855 50  0000 L CNN
F 2 "" H 1850 2900 50  0001 C CNN
F 3 "" H 1850 2900 50  0001 C CNN
	1    1850 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R5
U 1 1 5EBBD9C4
P 2250 2900
F 0 "R5" H 2318 2946 50  0000 L CNN
F 1 "15k" H 2318 2855 50  0000 L CNN
F 2 "" H 2250 2900 50  0001 C CNN
F 3 "" H 2250 2900 50  0001 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:R_Small_US R6
U 1 1 5EBBD9CA
P 2600 3000
F 0 "R6" V 2500 3000 50  0000 C CNN
F 1 "3.3k" V 2700 3000 50  0000 C CNN
F 2 "" H 2600 3000 50  0001 C CNN
F 3 "" H 2600 3000 50  0001 C CNN
	1    2600 3000
	0    1    1    0   
$EndComp
$Comp
L tasseract:C_Small C15
U 1 1 5EBBD9D0
P 2950 2900
F 0 "C15" H 3042 2946 50  0000 L CNN
F 1 "22uF" H 3042 2855 50  0000 L CNN
F 2 "" H 2950 2900 50  0001 C CNN
F 3 "" H 2950 2900 50  0001 C CNN
	1    2950 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C16
U 1 1 5EBBD9D6
P 3300 2900
F 0 "C16" H 3392 2946 50  0000 L CNN
F 1 "22uF" H 3392 2855 50  0000 L CNN
F 2 "" H 3300 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0001 C CNN
	1    3300 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C17
U 1 1 5EBBD9DC
P 3650 2900
F 0 "C17" H 3742 2946 50  0000 L CNN
F 1 "2.2uF" H 3742 2855 50  0000 L CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L tasseract:C_Small C18
U 1 1 5EBBD9E2
P 4050 2900
F 0 "C18" H 4142 2946 50  0000 L CNN
F 1 "2.2uF" H 4142 2855 50  0000 L CNN
F 2 "" H 4050 2900 50  0001 C CNN
F 3 "" H 4050 2900 50  0001 C CNN
	1    4050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2800 2250 2800
Connection ~ 1850 2800
Connection ~ 2250 2800
Wire Wire Line
	2250 2800 2950 2800
Connection ~ 2950 2800
Wire Wire Line
	2950 2800 3300 2800
Connection ~ 3300 2800
Wire Wire Line
	3300 2800 3650 2800
Connection ~ 3650 2800
Wire Wire Line
	3650 2800 4050 2800
Wire Wire Line
	2700 3000 2950 3000
Connection ~ 2950 3000
Wire Wire Line
	2950 3000 3300 3000
Connection ~ 3300 3000
Wire Wire Line
	3300 3000 3650 3000
Connection ~ 3650 3000
Wire Wire Line
	3650 3000 4050 3000
Wire Wire Line
	2500 3000 2250 3000
Wire Wire Line
	1650 3000 1650 2900
Wire Wire Line
	1650 2900 1550 2900
Connection ~ 1850 3000
Wire Wire Line
	1850 3000 1650 3000
Connection ~ 2250 3000
Wire Wire Line
	2250 3000 1850 3000
$Comp
L tasseract:GND #PWR?
U 1 1 5EBBDA00
P 1250 3200
F 0 "#PWR?" H 1250 2950 50  0001 C CNN
F 1 "GND" H 1255 3027 50  0000 C CNN
F 2 "" H 1250 3200 50  0001 C CNN
F 3 "" H 1250 3200 50  0001 C CNN
	1    1250 3200
	1    0    0    -1  
$EndComp
$Comp
L tasseract:+1V1 #PWR?
U 1 1 5EBBEAA4
P 4050 900
F 0 "#PWR?" H 4050 750 50  0001 C CNN
F 1 "+1V1" H 4065 1073 50  0000 C CNN
F 2 "" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0001 C CNN
	1    4050 900 
	1    0    0    -1  
$EndComp
Connection ~ 4050 900 
$Comp
L tasseract:+2V5 #PWR?
U 1 1 5EBBF052
P 4050 1850
F 0 "#PWR?" H 4050 1700 50  0001 C CNN
F 1 "+2V5" H 4065 2023 50  0000 C CNN
F 2 "" H 4050 1850 50  0001 C CNN
F 3 "" H 4050 1850 50  0001 C CNN
	1    4050 1850
	1    0    0    -1  
$EndComp
Connection ~ 4050 1850
$Comp
L tasseract:+3V3 #PWR?
U 1 1 5EBBF436
P 4050 2800
F 0 "#PWR?" H 4050 2650 50  0001 C CNN
F 1 "+3V3" H 4065 2973 50  0000 C CNN
F 2 "" H 4050 2800 50  0001 C CNN
F 3 "" H 4050 2800 50  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
Connection ~ 4050 2800
$EndSCHEMATC
