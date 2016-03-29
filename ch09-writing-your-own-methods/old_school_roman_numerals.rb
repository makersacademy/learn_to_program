def old_roman_numeral num

roman_numerals = []

m_num = num / 1000
d_num = num % 1000 / 500
c_num = num % 500 / 100
l_num = num % 100 / 50
x_num = num % 50 / 10
v_num = num % 10 / 5
i_num = num % 5 / 1

roman_numerals << ("M")* m_num
roman_numerals << ("D")* d_num
roman_numerals << ("C")* c_num
roman_numerals << ("L")* l_num
roman_numerals << ("X")* x_num
roman_numerals << ("V")* v_num
roman_numerals << ("I")* i_num

roman_numerals.join
end

#Done!
