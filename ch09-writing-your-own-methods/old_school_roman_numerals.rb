def old_roman_number num

  while num < 1 || num > 3000
    puts 'Please enter a number between 1 and 3000'
    num = gets.chomp.to_i
  end

  m_rem = num%1000
  d_rem = num%500
  c_rem = num%100
  l_rem = num%50
  x_rem = num%10
  v_rem = num%5

  m_div = num/1000
  d_div = m_rem/500
  c_div = d_rem/100
  l_div = c_rem/50
  x_div = l_rem/10
  v_div = x_rem/5
  i_div = v_rem/1

  m = 'M' * m_div
  d = 'D' * d_div
  c = 'C' * c_div
  l = 'L' * l_div
  x = 'X' * x_div
  v = 'V' * v_div
  i = 'I' * i_div

  puts m + d + c + l + x + v + i
end
old_roman_number(124)
