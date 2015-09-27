class Integer
  # your code here
  
  def factorial
    return nil if self <= 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end

  def to_roman
  	chars = {1000 => "M", 500 => "D",
              100 => "C",  50 => "L",
               10 => "X",   5 => "V",
                1 => "I"}
    number=self
    out = ""

    chars.each do |k, v|
    	(number / k).times {out << v ; number -= k}
    end
    out
  end

end



