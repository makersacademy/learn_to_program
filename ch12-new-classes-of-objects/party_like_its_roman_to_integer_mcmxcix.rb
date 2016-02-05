def roman_to_integer roman
  rom_num = roman.downcase
  m_num = rom_num.count("m")
  d_num = rom_num.count("d")
  c_num = rom_num.count("c")
  l_num = rom_num.count("l")
  x_num = rom_num.count("x")
  v_num = rom_num.count("v")
  i_num = rom_num.count("i")
if rom_num.include?("iv")
  i_num = 4
  v_num -=1
end
if rom_num.include?("ix")
  v_num = 1
  i_num = 4
  x_num -=1
end
if rom_num.include?("xc")
  x_num = 9
  c_num -=1
end
if rom_num.include?("cm")
  m_num -=1
  d_num = 1
  c_num =4
end


digits = m_num*1000 + d_num*500 + c_num*100 + l_num* 50 + x_num* 10 + v_num *5 + i_num



end
