def old_roman_numeral(num)
		
r = num
m = r/1000
r = r%1000

d = r/500
r = r%500

c = r/100
r = r%100

l = r/50
r = r%50

x = r/10
r = r%10

v = r/5
r = r%5

i = r

result = 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i
return result
end
