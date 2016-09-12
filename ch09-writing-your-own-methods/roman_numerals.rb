def old_roman_numeral number

  i = 0
  v = 0
  x = 0
  l = 0
  c = 0
  d = 0
  m = 0

  if number >= 1000
    m = number/1000
    number = number % 1000
  end

  if number >= 500
    d = number/500
    number = number % 500
  end

  if number >= 100
    c = number/100
    number = number % 100
  end

  if number >= 50
    l = number/50
    number = number % 50
  end

  if number >= 10
    x = number/10
    number = number % 10
  end

  if number >= 5
    v = number/5
    number = number % 5
  end

  if number < 5
    i = number/1
    number = number % 10
  end

puts ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)

end

puts "Enter a number, and I'll convert it into an old-school Roman numeral"

reply = gets.chomp

puts "The number " + reply.to_s + " in old-school Roman numerals is:"
old_roman_numeral reply.to_i