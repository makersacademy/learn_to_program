# Roman Numerals Reference
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000

def old_roman_numeral num
  i = 0
  v = 0
  x = 0
  l = 0
  c = 0
  d = 0
  m = 0

  if num >= 1000
    m = num/1000
    num = num % 1000
  end

  if num >= 500
    d = num/500
    num = num % 500
  end

  if num >= 100
    c = num/100
    num = num % 100
  end

  if num >= 50
    l = num/50
    num = num % 50
  end

  if num >= 10
    x = num/10
    num = num % 10
  end

  if num >= 5
    v = num/5
    num = num % 5
  end

  if num < 5
    i = num/1
    num = num % 10
  end

puts ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)

end

puts "Let's convert your number into an Old-School Roman Numeral!"
puts "Enter a number (Between 1 and 3000 or so..)"

user_number = gets.chomp

puts user_number.to_s + " in Old-School Roman Numerals is: "
old_roman_numeral user_number.to_i
