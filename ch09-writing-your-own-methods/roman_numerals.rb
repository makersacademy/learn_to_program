#def roman_numeral num
  # your code here
def roman n

thous=(n/1000)
hunds=(n%1000/100)
tens=(n%100/10)
ones=(n%10)

numeral='M' *thous

if hunds == 9
	numeral =numeral +'CM'
elsif hunds ==4
	numeral = numeral +'CD'
else
numeral =numeral +'D' *(n%1000/500)
numeral=numeral +'C' * (n % 500/100)
end

if tens == 9
	numeral =numeral +'XC'
elsif tens ==4
	numeral == numeral +'XL'
else
numeral =numeral +'L' *(n%100/50)
numeral=numeral +'X' * (n % 50/10)
end

if ones == 9
	numeral =numeral +'IX'
elsif ones ==4
	numeral = numeral +'IV'
else
numeral =numeral +'V' *(n%10/5)
numeral=numeral +'I' * (n % 5/1)
end

return numeral

end


#end
