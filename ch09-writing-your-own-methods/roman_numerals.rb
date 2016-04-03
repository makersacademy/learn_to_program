def roman_numeral num
  puts 'Enter an integer.'
  num = gets.chomp.to_i 

  romans = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV', 
    1    => 'I'
  }

  answer = ""
  romans.each do |value, key|
    answer << key * (num / value)
    num = num % value
  end
  puts answer
end