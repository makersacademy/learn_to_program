#def old_roman_numeral num
  # your code here
def roman n

thous='M' * (n/1000)
five_hund='D' * ((n%1000)/500)
hund='C' * ((n%500)/100)
fift='L' * ((n%100)/50)
ten='X' * ((n%50)/10)
five='V' * ((n%10)/5)
one='I' * (n%5)

numeral=thous+five_hund+hund+fift+ten+five+one
return numeral

end

puts "Enter a number: "
num=gets.chomp.to_i

puts roman(num)
#end
