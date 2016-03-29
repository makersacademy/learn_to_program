def roman_numeral num
  # your code here
m = num / 1000
num = num - m*1000

m9 = num / 900
num = num - m9*900

d = num / 500
num = num - d*500

d4 = num / 400
num = num - d4*400

c = num /100
num = num - c*100

c90 = num/90
num = num - c90*90

l = num/50
num = num - l*50

l40 = num/40
num = num - l40*40

x = num/10
num = num - x*10

x9 = num/9
num = num - x9*9

v = num/5
num = num - v*5

v4 = num/4
num = num - v4*4

i = num

puts 'M'*m + 'CM'*m9 + 'D'*d + 'CD'*d4 + 'C'*c + 'XC'*c90 + 'L'*l + 'XL'*l40 + 'X'*x + 'IX'*x9 + 'V'*v + 'IV'*v4 + 'I'*i


end
