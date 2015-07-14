def roman number

m_length = 0
n900_length = 0
d_length = 0
n400_length = 0
c_length = 0
n90_length = 0
l_length = 0
n40_length = 0
x_length = 0
n9_length = 0
v_length = 0
n4_length = 0
i_length = 0

if number >= 1000
m_length = number/1000
number = number%1000
end

if number >= 900
n900_length = number/900
number = number%900
end

if number >= 500
d_length = number/500
number = number%500
end

if number >= 400
n400_length = number/400
number = number%400
end

if number >= 100
c_length = number/100
number = number%100
end

if number >= 90
n90_length = number/90
number = number%90
end

if number >= 50
l_length = number/50
number = number%50
end

if number >= 40
n40_length = number/40
number = number%40
end

if number >= 10
x_length = number/10
number = number%10
end

if number >= 9
n9_length = number/9
number = number%9
end

if number >= 5
v_length = number/5
number = number%5
end

if number >= 4
n4_length = number/4
number = number%4
end

if number < 4
i_length = number/1
number = number%10
end

puts 'M'*m_length + "CM"*n900_length + 'D'*d_length + 'CD'*n400_length + 'C'*c_length +
'XC'*n90_length + 'L'*l_length + 'XL'*n40_length + 'X'*x_length + 'IX'*n9_length +
'V'*v_length + 'IV'*n4_length + 'I'*i_length

end

x = ''
while x != 'exit'
puts 'Enter a number, and the equivalent roman numeral will be returned.'
puts 'Type exit to quit.'
x = gets.chomp
roman x.to_i
end
