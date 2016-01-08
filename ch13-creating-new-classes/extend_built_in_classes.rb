class Integer
  def to_roman 
    dic = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
    return dic[self] if dic.has_key?(self)
    dig = self.to_s.chars.reverse
    "#{dig[3].to_i < 5 ? dic[1000] * (dig[3].to_i) : dic[1000] * (dig[3].to_i)}"+
    "#{dig[2].to_i < 5 ? dic[100] * (dig[2].to_i) : dic[500] + dic[100] * (dig[2].to_i - 5)}"+
    "#{dig[1].to_i < 5 ? dic[10] * (dig[1].to_i) : dic[50] + dic[10] * (dig[1].to_i - 5)}"+
    "#{dig[0].to_i < 5 ? dic[1] * (dig[0].to_i) : dic[5] + dic[1] * (dig[0].to_i % 5)}"
  end
  
  def factorial
    raise "Cannot use negative Integers" if self < 0
    return 1 if self <= 1
    self * (self-1).factorial
  end
end

p 4.to_roman