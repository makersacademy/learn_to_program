<<<<<<< HEAD
def old_roman_numeral num_roman
  letter_num = [["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]]
  out = ""

  letter_num.each do |arr|
      l = arr[0]
      n = arr[1]
    out << l*(num_roman / n)
    num_roman = num_roman %  n
  end
  return out
end

puts old_roman_numeral(2900)
=======
def roman number

m_length = 0
d_length = 0
c_length = 0
l_length = 0
x_length = 0
v_length = 0
i_length = 0

if number >= 1000
m_length = number/1000
number = number%1000
end

if number >= 500
d_length = number/500
number = number%500
end

if number >= 100
c_length = number/100
number = number%100
end

if number >= 50
l_length = number/50
number = number%50
end

if number >= 10
x_length = number/10
number = number%10
end

if number >= 5
v_length = number/5
number = number%5
end

if number < 5
i_length = number/1
number = number%10
end

puts 'M'*m_length + 'D'*d_length + 'C'*c_length + 'L'*l_length + 'X'*x_length +
'V'*v_length + 'I'*i_length 

end

roman 2999
>>>>>>> 11673945d6bf849a1c90999e1382e105a8fe4577
