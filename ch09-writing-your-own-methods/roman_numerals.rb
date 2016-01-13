def roman_numeral num
=begin
  old_roman = ""
  old_roman << "M" * (num / 1000)
  old_roman << "D" * ((num % 1000) / 500)
  old_roman << "C" * ((num % 500) / 100)
  old_roman << "L" * ((num % 100) / 50)
  old_roman << "X" * ((num % 50) / 10)
  old_roman << "V" * ((num % 10) / 5)
  old_roman << "I" * ((num % 5) / 1)
=end

  i_val, v_val, x_val, l_val = 1, 5, 10,50
  c_val, d_val, m_val = 100, 500, 1000
  old_roman = ""
  old_value = num
  if num >= m_val
    old_roman += "M"* (num/m_val)
    num -= (num/m_val) * m_val
  end
  if num >= d_val
    if (num/c_val) == 9
      old_roman += "CM"
      num -= (num/c_val) * c_val
    else
      old_roman += "D"* (num/d_val)
      num -= (num/d_val) * d_val
    end
  end
  if num >= c_val
    num/c_val == 4 ? old_roman += "CD" : old_roman += "C"* (num/c_val)
    num -= (num/c_val) * c_val
    #puts old_roman
  end
  if num >= l_val
    if num/x_val == 9
      old_roman += "XC"
      num -= (num/x_val) * x_val
    else
      old_roman += "L"* (num/l_val)
      num -= (num/l_val) * l_val
    end
  end
  if num >= x_val
    num/x_val == 4 ? old_roman += "XL" : old_roman += "X"* (num/x_val)
    num -= (num/x_val) * x_val
  end
  if num >= v_val
    if num/i_val == 9
      old_roman += "IX"
      num -= (num/i_val) * i_val
    else
      old_roman += "V" * (num/v_val)
      num -= (num/v_val) * v_val
    end
  end
  if num >= i_val
    num/i_val == 4 ? old_roman += "IV" : old_roman += "I" * (num/i_val)
    num -= (num/i_val) * i_val
  end
  #puts "old value is #{old_value} and roman is #{old_roman}"
  return old_roman


end



roman_numeral 6
roman_numeral 8
roman_numeral 16
roman_numeral 55
roman_numeral 178
roman_numeral 999