def old_roman_numeral(num)
    m_length = 0
    cm_length = 0
    d_length = 0
    cd_length= 0
    c_length = 0
    xc_length = 0
    l_length = 0
    xl_length = 0
    x_length = 0
    ix_length = 0
    v_length = 0
    iv_length = 0
    i_length = 0

    if num >= 1000
      m_length = num/1000
      num = num%1000
    end
    if num >= 900
      cm_length = num/900
      num = num%900
    end
    if num >= 500
      d_length = num/500
      num = num % 500
    end
    if num >= 400
      cd_length = num/400
      num = num % 400
    end
    if num >= 100
      c_length = num/100
      num = num % 100
    end
    if num >= 90
      xc_length= num/90
      num = num % 90
    end
    if num >=50
      l_length = num/50
      num = num%50
    end
    if num >= 40
      xl_length= num/40
      num = num%40
    end
    if num >= 10
      x_length = num/10
      num = num % 10
    end
    if num >= 9
      ix_length= num/9
      num = num % 9
    end
    if num >= 5
      v_length = num/5
      num = num%5
    end
    if num >= 4
      iv_length = num /4
      num = num % 4
    end
    if num < 5
      i_length = num/1
    end
    "M"*m_length + "CM"*cm_length + "D"*d_length + "CD"*cd_length + "C"*c_length+ "XC"*xc_length + "L"*l_length + "XL"*xl_length + "X"*x_length +"IX"*ix_length + "V"*v_length + "IV"*iv_length + "I"*i_length
end

def roman_numeral number

m_length = 0
n900_length = 0
d_length = 0
n400_length = 0
c_length = 0
n90_length = 0
l_length = 0
n40_length = 0
x_length = 0
n9_length = 0
v_length = 0
n4_length = 0
i_length = 0

if number >= 1000
m_length = number/1000
number = number%1000
end

if number >= 900
n900_length = number/900
number = number%900
end

if number >= 500
d_length = number/500
number = number%500
end

if number >= 400
n400_length = number/400
number = number%400
end

if number >= 100
c_length = number/100
number = number%100
end

if number >= 90
n90_length = number/90
number = number%90
end

if number >= 50
l_length = number/50
number = number%50
end

if number >= 40
n40_length = number/40
number = number%40
end

if number >= 10
x_length = number/10
number = number%10
end

if number >= 9
n9_length = number/9
number = number%9
end

if number >= 5
v_length = number/5
number = number%5
end

if number >= 4
n4_length = number/4
number = number%4
end

if number < 4
i_length = number/1
number = number%10
end

puts 'M'*m_length + "CM"*n900_length + 'D'*d_length + 'CD'*n400_length + 'C'*c_length + 'XC'*n90_length + 'L'*l_length + 'XL'*n40_length + 'X'*x_length + 'IX'*n9_length + 'V'*v_length + 'IV'*n4_length + 'I'*i_length

end


=begin
ROMAN_NUMBERS = {
  1000 => "M",
   900 => "CM",
   500 => "D",
   400 => "CD",
   100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I",
      0 => "",
}
def roman_numeral(input)
  return '' if self == 0
  ROMAN_NUMBERS.each do |value, letter|
    return ( letter * (self / value)) << (self % value).roman if value <= self
  end
  return (self % value).roman
end

puts roman_numeral(4999)
=end
