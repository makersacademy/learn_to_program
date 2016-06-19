#mcmxcix
def roman_to_integer roman
  roman_values = {'i' => 1,
                  'v' => 5,
                  'x' => 10,
                  'l' => 50,
                  'c' => 100,
                  'd' => 500,
                  'm' => 1000}
  num = 0
  last = 0
  roman.reverse.downcase.each_char do |r|
    if r == nil
      puts "Not a valid roman numeral"
      return
    end
    digit = roman_values[r]
    if digit < last
      digit *= -1
    end
    num += digit
    last = digit
  end
  num
end

puts roman_to_integer('MCMXCIX')
