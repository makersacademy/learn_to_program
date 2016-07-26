def old_roman_numeral num
  m_count = 0
  d_count = 0
  c_count = 0
  l_count = 0
  x_count = 0
  v_count = 0
  i_count = 0

  m_count = num / 1000
  num = num - (m_count * 1000)

  d_count = num / 500
  num = num - (d_count * 500)

  c_count = num / 100
  num = num - (c_count * 100)

  l_count = num / 50
  num = num - (l_count * 50)

  x_count = num / 10
  num = num - (x_count * 10)

  v_count = num / 5
  num = num - (v_count * 5)

  i_count = num / 1
  num = num - (i_count * 1)

=begin
  puts m_count
  puts d_count
  puts c_count
  puts l_count
  puts x_count
  puts v_count
  puts i_count
=end

  roman_result = "M" * m_count + "D" * d_count + "C" * c_count + "L" * l_count + "X" * x_count + "V" * v_count + "I" * i_count
  puts roman_result
end
