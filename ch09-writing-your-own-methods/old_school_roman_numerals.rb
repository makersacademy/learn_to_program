class Integer
  def roman
    letter = {1000 => 'M',500 => 'D',100 =>'C',50 => 'L',10 => 'X',5 => 'V',1 => 'I'}
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
