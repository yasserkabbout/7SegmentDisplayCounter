
TRISA = 0
TRISB = 0



pattern1 var byte
pattern2 var byte
Digit1 var byte
Digit2 var byte
i var byte
 porta.1 = 1
 porta.2 = 1

again: 

main:
 

'digit1 
for Digit1 = 0 to 9

gosub convert1
porta.1 = 0  
portb = pattern1
pause 100
porta.1 = 1


'digit2 
for Digit2 = 0 to 9

porta.1 = 0  
portb = pattern1
pause 100
porta.1 = 1

gosub convert2
porta.2 = 0
portb = pattern2
pause 100
porta.2 = 1

next Digit2

next Digit1

goto again

'Digit1
convert1:

LOOKUP digit1, [$3F, $06, $5B, $4F, $66, $6D, $7D, $07, $7F, $6F], Pattern1

'Digit2
convert2:

LOOKUP digit2, [$3F, $06, $5B, $4F, $66, $6D, $7D, $07, $7F, $6F], Pattern2

return

End 