class Integer
  def roman
    letter = {1000 => 'M',900 => 'CM',500 => 'D',400 => 'CD',100 =>'C',90 => 'XC',50 => 'L',40 => 'XL',10 => 'X',9 => 'IX',5 => 'V',4 => 'IV',1 => 'I'}
    array = []
    num = self
    letter.each do |val, char|
      if num / val >= 1
        array.push (char * (num / val))
        num = num - (val * (num / val))
      end
    end
    array.join
  end
end

input = gets.chomp.to_i
puts input.roman
