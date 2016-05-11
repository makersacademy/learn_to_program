def roman_to_integer roman
    roman_up = roman.upcase
    number = 0
    hash_match = {'CM'=> 900,'CD' => 400,'XC'=> 90,'XL'=> 40,'IX'=> 9,'IV'=> 4,'M' => 1000,'D' => 500,'C' => 100,'L'=> 50,'X'=> 10,'V' => 5,'I'=> 1}
  
  	hash_match.each do |key,value|
  		value_str = value.to_s
  		roman_up.gsub!(key, " " +  value_str + " ")
  	end
  	roman_spl = roman_up.split(" ")
  	roman_spl.each do |ele|
  		number = number + ele.to_i
  	end
  	return number
  end
  