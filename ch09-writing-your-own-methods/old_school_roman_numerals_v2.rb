def old_roman_numeral num

  m = 'M' * (num        / 1000)
  d = 'D' * (num % 1000 /  500)
  c = 'C' * (num %  500 /  100)
  l = 'L' * (num %  100 /   50)
  x = 'X' * (num %   50 /   10)
  v = 'V' * (num %   10 /    5)
  i = 'I' * (num %   5  /    1)
  
  puts m+d+c+l+x+v+i

end

puts 'What number would you like converting into old-school Roman?'
num = gets.chomp
old_roman_numeral(num.to_i)