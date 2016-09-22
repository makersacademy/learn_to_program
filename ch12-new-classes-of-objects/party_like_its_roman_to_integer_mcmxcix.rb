def roman_to_integer roman
  roman.upcase!
  digits = {'M' => 1000,
  'D' => 500,
  'C' => 100,
  'L' => 50,
  'X' => 10,
  'V' => 5,
  'I' => 1}
  
  total = 0
  prev = 0
  roman.reverse.each_char do |char|
      if !digits.has_key?(char)
          puts "Please enter a valid roman numeral"
      else
          val = digits[char]
          if val < prev
            val *= -1
          else
            prev = val
          end
      end
      total += val
  end
  total
end

puts roman_to_integer("mcmxcix")
puts roman_to_integer('MMXiv')