def roman_to_integer roman
roman_to_arabic = {'i' => 1,
                   'v' => 5,
                   'x' => 10,
                   'l' => 50,
                   'c' => 100,
                   'd' => 500,
                   'm' => 1000}
    result = 0
    prev = 0
  roman.reverse.each_char do |i|
    sum = roman_to_arabic[i.downcase]

  return puts 'This is wrong!' if !sum
  if sum < prev
    sum *= -1
  else
    prev = sum
  end
result += sum
  end
result
end