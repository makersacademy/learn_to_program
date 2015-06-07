def roman_numeral num
  roman_hash = 	{1000 => 'M',
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
  				1 => 'I'}
   roman_string = ''
  roman_hash.each do |x,y|
  roman_string << y * (num/x)
  num = num - ((num/x)*x)
  end
  puts roman_string
end
puts "what number?"
num = gets.chomp.to_i

roman_numeral num