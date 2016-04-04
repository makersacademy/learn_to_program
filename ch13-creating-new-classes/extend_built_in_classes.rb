class Integer
def to_roman

roman_numerals = []

m_num = self / 1000
d_num = self % 1000 / 500
c_num = self % 500 / 100
l_num = self % 100 / 50
x_num = self % 50 / 10
v_num = self % 10 / 5
i_num = self % 5 / 1

roman_numerals << ("M")* m_num
roman_numerals << ("D")* d_num
roman_numerals << ("C")* c_num
roman_numerals << ("L")* l_num
roman_numerals << ("X")* x_num
roman_numerals << ("V")* v_num
roman_numerals << ("I")* i_num

roman_numerals.join
end

def factorial
  self.downto(1).reduce(:*)
end
end

#Done
