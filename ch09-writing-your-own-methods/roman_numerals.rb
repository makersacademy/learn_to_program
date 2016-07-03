def roman_numeral num
  romans = [['I', 'IV', 'V', 'IX'], 
            ['X', 'XL', 'L', 'XC'], 
            ['C', 'CD', 'D', 'CM'], 
            ['M', 'M', 'M', 'M']]

  answer = ""
  num.to_s.split('').reverse.each.with_index do |n, index|
    if n == '4'
      answer = romans[index][1] + answer
    elsif n == '9'
      answer = romans[index][3] + answer
    else
      answer = (romans[index][2] * (n.to_i / 5)) + (romans[index][0] * (n.to_i % 5)) + answer
    end
  end
  answer
end