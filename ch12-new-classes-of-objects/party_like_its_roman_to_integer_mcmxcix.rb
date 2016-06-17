def roman_to_integer(roman)
  # Let's use a hash this time
  digital = { 'i' => 1,
            'v' => 5,
            'x' => 10,
            'l' => 50,
            'c' => 100,
            'd' => 500,
            'm' => 1000}
  ans = 0
  index = roman.length - 1
  prev = 0
  while index >= 0
     current = digital[roman[index].downcase]
     # This is the key. Keep a track of the digit you are implementing and
     # subtract it from the total if it is "smaller" than a digit to the right
     # of it (prev). This only occurs when you have ix or cm, etc.
     current *= - 1 if current < prev
     index -= 1
     ans += current
     prev = current
  end
  ans
end

p roman_to_integer('xix')
p roman_to_integer('xix')
p roman_to_integer('mcclxvii')
p roman_to_integer('ccclxv')
