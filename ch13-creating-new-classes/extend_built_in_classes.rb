
class Integer
  
  def factorial
    self.downto(1).inject(:*)
  end

  def to_roman
    roman = {1000=>'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 =>'I'}
    result=''
    num = self
    
    roman.each do |english_value ,numeral|
      divide = (num / english_value) 
        if divide > 0
          result << numeral * divide
        end
      remainder = num % english_value
      num = remainder
    end
    
    result
  end

end