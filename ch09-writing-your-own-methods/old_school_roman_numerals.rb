def old_roman_numerals num

thous='M' * (num/1000)
five_hund='D' * ((num%1000)/500)
hund='C' * ((num%500)/100)
fift='L' * ((num%100)/50)
ten='X' * ((num%50)/10)
five='V' * ((num%10)/5)
one='I' * (num%5)

numeral=thous+five_hund+hund+fift+ten+five+one
return numeral

end


