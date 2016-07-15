def old_roman_numeral num
    
    m_num = num / 1000
    d_num = num % 1000 / 500
    c_num = num % 500 / 100
    l_num = num % 100 / 50
    x_num = num % 50 / 10
    v_num = num % 10 / 5
    i_num = num % 5 / 1
    
    return ("M" * m_num + "D" * d_num + "C" * c_num + "L" * l_num + "X" * x_num + "V" * v_num + "I" * i_num)

end

puts old_roman_numeral(2561)
end