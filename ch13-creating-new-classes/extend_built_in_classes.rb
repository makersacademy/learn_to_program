class Integer
    
def factorial
self <= 1 ? 1 : self * (self - 1).factorial
end

def to_roman
    
num = self
roman_num = ""

  roman_num << 'M' * (num/1000)

  roman_num << 'D' * (num%1000/500)

  roman_num << 'C' * (num%500/100)

  roman_num << 'L' * (num%100/50)

  roman_num << 'X' * (num%50/10)

  roman_num << 'V' * (num%10/5)

  roman_num << 'I' * (num%5)

  roman_num
end
end