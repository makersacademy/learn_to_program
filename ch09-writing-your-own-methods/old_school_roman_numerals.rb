def old_roman_numeral num
  # your code here
m = num / 1000
num = num - m*1000

d = num / 500
num = num - d*500

c = num /100
num = num - c*100

l = num/50
num = num - l*50

x = num/10
num = num - x*10

v = num/5
num = num - v*5

i = num

puts 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i

	
end
