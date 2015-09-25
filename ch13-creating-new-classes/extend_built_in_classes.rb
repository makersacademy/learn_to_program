class Integer
  # your code here
  
  def factorial
    return nil if self <= 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end

  def roman
  	chars = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
              100 => "C",  90 => "XC",  50 => "L",  40 => "XL",
               10 => "X",   9 => "IX",   5 => "V",   4 =>"IV",
                1 => "I"}
    number=self
    out = ""

    chars.each do |k, v|
    	(number / k).times {out << v ; number -= k}
    end
    out
  end

end



