class Integer
  # your code here
  def factorial(n=self)
  	return 1 if n ==1
    n * factorial(n-1)
  end	
  def to_roman
  	num = self
  	roman =''
    roman_map = {  1000 => "M",
                  	500 => "D",
                  	100 => "C",
                	   50 => "L",
                	   10 => "X",
                	    5 => "V",
                      1 => "I"
                }

      roman_map.each do |value, letters|
        while value <= num
            roman << letters
            num -= value
        end
      end
      roman;
  end	
end

