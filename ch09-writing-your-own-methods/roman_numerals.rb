def roman_numeral num
  	
mapper = {
1    => 'I',
4    => 'IV',
5    => 'V',
9    => 'IX',
10   => 'X',
40   => 'XL',
50   => 'L',
90   => 'XC',
100  => 'C',
400  => 'CD',
500  => 'D',
900  => 'CM',
1000 => 'M'
}

roman = ''
mapper.keys.reverse.each do |value|
while num >= value
num -= value
roman += mapper[value]
end
end
roman
end