class Integer 

def factorial

self < 0 ? 'You can\'t take the factorial of a negative number!': self <= 1 ? 1 : self * (self - 1).factorial

end

def to_roman

roman_num = ''   
roman_num = roman_num + 'M'*(self/1000)
roman_num = roman_num + 'D'*(self % 1000 /500)
roman_num = roman_num + 'C'*(self % 500 /100)
roman_num = roman_num + 'L'*(self % 100 /50)
roman_num = roman_num + 'X'*(self % 50 /10)
roman_num = roman_num + 'V'*(self % 10 /5)
roman_num = roman_num + 'I'*(self % 5)
roman_num 

end

end
