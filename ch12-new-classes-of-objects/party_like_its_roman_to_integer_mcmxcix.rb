def roman_to_integer roman
  roman_values = {'i' => 1,
                  'v' => 5,
                  'x' => 10,
                  'l' => 50,
                  'c' => 100,
                  'd' => 500,
                  'm' => 1000}

total = 0
prev = 0
sep_values = roman.downcase.reverse.to_s.chars
sep_values.each do |num|
  val = roman_values[num]
  if !val
  puts "This is not a valid Roman Numeral."
  return
end

if val < prev
  val *= -1
else
  prev = val
end
total += val
end
  total
end

puts roman_to_integer('mcmxcix')
puts roman_to_integer('CCCLXV')
