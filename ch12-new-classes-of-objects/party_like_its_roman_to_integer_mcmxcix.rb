def roman_to_integer roman
roman = roman.downcase
roman_digits = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
prev = 0
size = roman.length
roman = roman.reverse
conv = []

roman.each_char do |x|
  valid = roman_digits[x]
  if x =! valid
    puts 'Zut alor, je ne comprend pas mon amis!'
    return
    exit
  end
if valid < prev
  valid *= -1
else
  prev = valid
end
conv << valid
end
conv.inject(0) { |x,y| x + y}




end