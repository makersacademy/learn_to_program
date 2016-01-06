def old_roman_numeral (num)



#what's left over
leftwithfivehundreds = 0
leftwithhundreds = 0
leftwithfifties = 0
leftwithtens = 0
leftwithfives = 0
leftwithunits = 0

#number to *with_symbols
thousands = 0
fivehundreds = 0
hundreds = 0
fifties = 0
tens = 0
fives = 0
units = 0
final_string = ''

#Strings:
stringunits = ''
stringfives = ''
stringtens = ''
stringfifties = ''
stringhundreds = ''
stringfivehundreds = ''
stringthousands = ''

#Methody bit
thousands = num/1000

leftwithfivehundreds = num - thousands*1000

fivehundreds = leftwithfivehundreds/500 

leftwithhundreds = leftwithfivehundreds - fivehundreds*500 

hundreds = leftwithhundreds/ 100 

leftwithfifties = leftwithhundreds - hundreds*100 

fifties = leftwithfifties/ 50 

leftwithtens = leftwithfifties - fifties*50

tens = leftwithtens/10 

leftwithfives = leftwithtens - tens*10 

fives = leftwithfives/5 

leftwithunits = leftwithfives - fives*5 

units = leftwithunits

#Stringing:

stringthousands = 'M'*thousands 
stringfivehundreds = 'D'*fivehundreds
stringhundreds = 'C'*hundreds
stringfifties = 'L'*fifties
stringtens = 'X'*tens
stringfives = 'V'*fives
stringunits = 'I'*units

final_string = "#{stringthousands}#{stringfivehundreds}#{stringhundreds}#{stringfifties}#{stringtens}#{stringfives}#{stringunits}"

end


puts old_roman_numeral(3557)


   



  
