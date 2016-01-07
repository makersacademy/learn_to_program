class Integer
  def to_roman
    num = self
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
    puts "old value is #{old_value} and roman is #{old_roman}"
    return old_roman
  end
end

6.to_roman
19.to_roman
99.to_roman
999.to_roman
9999.to_roman
