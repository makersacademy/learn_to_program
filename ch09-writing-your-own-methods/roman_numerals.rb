# Struggled with the solution so used http://learntoprogramanswers.blogspot.co.uk/ and figured out how it works combined with looking at https://www.mathsisfun.com/roman-numerals.html

def roman_numeral(num)
  m_length = 0
  n900_length = 0
  d_length = 0
  n400_length = 0
  c_length = 0
  n90_length = 0
  l_length = 0
  n40_length = 0
  x_length = 0
  n9_length = 0
  v_length = 0
  n4_length = 0
  i_length = 0

  if num >= 1000
    m_length = num / 1000
    num = num % 1000
  end

  if num >= 900
    n900_length = num / 900
    num = num % 900
  end

  if num >= 500
    d_length = num / 500
    num = num % 500
  end

  if num >= 400
    n400_length = num / 400
    num = num % 400
  end

  if num >= 100
    c_length = num / 100
    num = num % 100
  end

  if num >= 90
    n90_length = num / 90
    num = num % 90
  end

  if num >= 50
    l_length = num / 50
    num = num % 50
  end

  if num >= 40
    n40_length = num / 40
    num = num % 40
  end

  if num >= 10
    x_length = num / 10
    num = num % 10
  end

  if num >= 9
    n9_length = num / 9
    num = num % 9
  end

  if num >= 5
    v_length = num / 5
    num = num % 5
  end

  if num >= 4
    n4_length = num / 4
    num = num % 4
  end

  if num < 4
    i_length = num / 1
  end

  return 'M' * m_length + 'CM' * n900_length + 'D' * d_length + 'CD' * n400_length + 'C' * c_length + 'XC' * n90_length + 'L' * l_length + 'XL' * n40_length + 'X' * x_length + 'IX' * n9_length + 'V' * v_length + 'IV' * n4_length + 'I' * i_length
end

puts roman_numeral(4840)
