class Integer
  def factorial
  	if self <= 1
  		return 1
  	else
  		 self * (self-1)factorial
  	end
  end
  def to_roman
  	roman_map = {1000 => "M",  900 => "CM", 500 => "D",400 => "CD",100 => "C",90 => "XC",50 => "L",40 => "XL",10 => "X",9 => "IX",5 => "V",4 => "IV",1 => "I"}
   	roman_str = ""
    while (self != 0)
    	roman_map.each do |k,v|
    		roman_str << v*(num/k)
    		self = self % k
    	end
    end

	return roman_str
  end
end