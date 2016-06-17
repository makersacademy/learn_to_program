def old_roman_numeral(num)

  length = { :m_length => 0, :d_length => 0, :c_length => 0, :l_length => 0,
                             :x_length => 0, :v_length => 0, :i_length => 0 }

  length[:m_length] = num/1000 if num >= 1000
  num = num%1000 if num >=1000

  length[:d_length] = num/500 if num >= 500
  num = num%500 if num >= 500

  length[:c_length] = num/100 if num >= 100
  num = num%100 if num >= 100

  length[:l_length] = num/50 if num >= 50
  num = num%50 if num >= 50

  length[:x_length] = num/10 if num >= 10
  num = num%10 if num >= 10

  length[:v_length] = num/5 if num >= 5
  num = num%5 if num >= 5

  length[:i_length] = num/1 if num < 5
  num = num%10 if num < 5

  "M"*length[:m_length] + "D"*length[:d_length] + "C"*length[:c_length] +
       "L"*length[:l_length] + "X"*length[:x_length] +
       "V"*length[:v_length] + "I"*length[:i_length]
end
