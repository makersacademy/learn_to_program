def old_roman_numeral (n)
 
 thousand = 'M' * (n/1000)
 five_h = 'D' *(n%1000/500)
 hundred = 'C' *(n%500/100)
 fifty = 'L' *(n%100/50)
 ten = 'X' *(n%50/10)
 five = 'V' *(n%10/5)
 one = 'I' *(n%5/1)

answer = thousand+five_h+hundred+fifty+ten+five+one

answer
end

puts old_roman_numeral(1999)

