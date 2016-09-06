def roman_numeral num
  i = 0
  iv = 0 # 4
  v = 0
  ix = 0 # 9
  x = 0
  xl = 0 # 40
  l = 0
  xc = 0 # 90
  c = 0
  cd = 0 # 400
  d = 0
  cm = 0 # 900
  m = 0

  if num >= 1000
    m = num/1000
    num = num % 1000
  end

  if num >= 900
    cm = num/900
    num = num % 900
  end

  if num >= 500
    d = num/500
    num = num % 500
  end

  if num >= 400
    cd = num/400
    num = num % 400
  end

  if num >= 100
    c = num/100
    num = num % 100
  end

  if num >= 90
    xc = num/90
    num = num % 90
  end

  if num >= 50
    l = num/50
    num = num % 50
  end

  if num >= 40
    xl = num/40
    num = num % 40
  end

  if num >= 10
    x = num/10
    num = num % 10
  end

  if num >= 9
    ix = num/9
    num = num % 9
  end

  if num >= 5
    v = num/5
    num = num % 5
  end

  if num >= 4
    iv = num/4
    num = num % 4
  end

  if num < 5
    i = num/1
    num = num % 10
  end

puts ("M" * m)+ ("CM" * cm) + ("D" * d) + ("CD" * cd) + ("C" * c) + ("XC" * xc) + ("L" * l) + ("XL" * xl) + ("X" * x) + ("IX" * ix) + ("V" * v) + ("IV" * iv) + ("I" * i)

end

puts "Let's convert your number into Roman Numerals!"
print "Enter a number: "
user_number = gets.chomp

print user_number.to_s + " in Roman Numerals is: "
roman_numeral user_number.to_i
