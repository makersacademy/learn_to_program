def roman_numeral(num)
  m = 0
  n900 = 0
  d = 0
  n400 = 0
  c = 0
  n90 = 0
  l = 0
  n40 = 0
  x = 0
  n9 = 0
  v = 0
  n4 = 0
  i = 0

  if num >= 1000
    m = num / 1000
    num = num % 1000
  end

  if num >= 900
    n900 = num / 900
    num = num % 900
  end

  if num >= 500
    d = num / 500
    num = num % 500
  end

  if num >= 400
    n400 = num /400
    num = num % 400
  end

  if num >= 100
    c = num / 100
    num = num % 100
  end

  if num >= 90
    n90 = num / 90
    num = num % 90
  end

  if num >= 50
    l = num / 50
    num = num % 50
  end

  if num >= 40
    n40 = num / 40
    num = num % 40
  end

  if num >= 10
    x = num /10
    num = num %10
  end

  if num >= 9
    n9 = num / 9
    num = num % 9
  end

  if num >= 5
    v = num / 5
    num = num % 5
  end

  if num >= 4
    n4 = num / 4
    num = num % 4
  end

  if num < 4
    i = num / 1
    #num = num % 10
  end

  numberal = "M"*m + "CM"*n900 + "D"*d + "CD"*n400 + "C"*c + "XC"*n90 + "L"*l + "XL"*n40 + "X"*x + "IX"*n9 +"V"*v + "IV"*n4 + "I"*i
end
