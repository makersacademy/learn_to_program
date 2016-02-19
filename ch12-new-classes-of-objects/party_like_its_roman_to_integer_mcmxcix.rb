def roman_to_integer roman
  # your code here
  num_map =
  {
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
  reply = 0
  roman.upcase!
  for key, value in num_map
      while roman.index(value) == 0
        reply += key
        roman.slice!(value)
      end
  end
  reply
end
