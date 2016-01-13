def old_roman_numeral num
  # your code here
  old_value = num
  i_val, v_val, x_val, l_val = 1, 5, 10,50
  c_val, d_val, m_val = 100, 500, 1000
  old_roman = ""
  if num >= m_val
    old_roman += "M"* (num/m_val)
    num -= (num/m_val) * m_val
  end
  if num >= d_val
    old_roman += "D"* (num/d_val)
    num -= (num/d_val) * d_val
  end
  if num >= c_val
    old_roman += "C"* (num/c_val)
    num -= (num/c_val) * c_val
    #puts old_roman
  end
  if num >= l_val
    old_roman += "L"* (num/l_val)
    num -= (num/l_val) * l_val
  end
  if num >= x_val
    old_roman += "X"* (num/x_val)
    num -= (num/x_val) * x_val
  end
  if num >= v_val
    old_roman += "V" * (num/v_val)
    num -= (num/v_val) * v_val
  end
  if num >= i_val
    #puts num
    old_roman += "I" * (num/i_val)
    num -= (num/i_val) * i_val
  end
  return old_roman
  #puts "old value is #{old_value} and roman is #{old_roman}"

end

=begin
old_roman_numeral 4
old_roman_numeral 8
old_roman_numeral 12
old_roman_numeral 55
old_roman_numeral 178
=end
