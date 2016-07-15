def old_roman_numeral(num)
romannums = ""

romannums += "M" * (num / 1000) 
romannums += "D" * (num % 1000 / 500)  
romannums += "C" * (num % 500 / 100) 
romannums += "L" * (num % 100 /50) 
romannums += "X" * (num % 50 /10) 
romannums += "V" * (num % 10 /5) 
romannums += "I" * (num % 5 /1) 
return romannums
end
