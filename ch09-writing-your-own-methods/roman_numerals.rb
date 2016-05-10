def roman_numeral num
  # your code here

roman_symbol = {
  	1000 => 'M',
  	900 => 'CM',
  	500 => 'D',
  	400 => 'CD',
  	100 => 'C',
  	90 => 'XC',
  	50 => 'L',
  	40 => 'XL',
  	10 => 'X',
  	9 => 'IX',
  	5 => 'V',
  	4 => 'IV',	
  	1 => 'I'
}
 roman = ''
 roman_symbol.each do |key, value|

 	roman << value * (num/key)
 	num = num % key
 end
 roman
end