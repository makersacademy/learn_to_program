class Integer
    
  def factorial
    return 'You can\'t take the factorial of a negative number!' if self < 0
    return 1 if self <= 1
    self * (self-1).factorial
  end
  
  def to_roman
      
    num = self
    
      if num <= 0
        return '>0 only please!'
      end
      
      #this will be our roman numeral string:
      roman_numeral = ''
      
      # deal with 1000s
      thousands = num/1000
      if thousands > 0
          roman_numeral = 'M'*thousands
          num = num - thousands*1000
      end
      
      #deal wih 100s
      hundreds = num/100
      if hundreds >= 5
          roman_numeral = roman_numeral + 'D' + 'C'*(hundreds-5)
      elsif hundreds > 0
          roman_numeral = roman_numeral + 'C'*hundreds
      end
      num = num - hundreds*100
          
      #deal wih 10s
      tens = num/10
      if tens >= 5
          roman_numeral = roman_numeral + 'L' + 'X'*(tens-5)
      elsif tens > 0
          roman_numeral = roman_numeral + 'X'*tens
      end
      num = num - tens*10
          
      #deal wih 1s
      if num >= 5
          roman_numeral = roman_numeral + 'V' + 'I'*(num-5)
      elsif num > 0
          roman_numeral = roman_numeral + 'I'*num
      end
      
      return roman_numeral
      
  end
  
end

puts 3.factorial
puts 30.factorial
puts 4.to_roman
puts 3567.to_roman
