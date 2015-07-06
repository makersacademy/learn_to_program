def old_roman_numeral num
  result = ""
  result << 'M' * (num      / 1000)
  result << 'D' * (num%1000 /  500)
  result << 'C' * (num%500  /  100)
  result << 'L' * (num%100  /   50)
  result << 'X' * (num%50   /   10)
  result << 'V' * (num%10   /    5)
  result << 'I' * (num%5    /    1)
  result
end

puts "Please pick a number between 1 to 3000."
while true
  num = gets.chomp.to_i
  break if 1 <= num && num <= 3000
  puts "Please pick a number between 1 to 3000."
end
puts "In Old-school Roman numerals, it is:"
puts (ans = (old_roman_numeral num))

numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
for n in (0 .. numerals.length - 2)
  ans.sub! numerals[n] + numerals[n+1] * 4, numerals[n+1] + numerals[n-1]
  ans.sub! numerals[n+1] * 4, numerals[n+1] + numerals[n]
end

puts "In Modern Roman numerals, it is:"
puts ans
