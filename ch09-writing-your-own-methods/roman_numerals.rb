def roman_numeral num
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  m = 'M' * (num / 1000)
  
  if hundreds == 9
    d = 'C'
    c = 'M'
  elsif hundreds == 4
    d = 'C'
    c = 'D'
  else
    d = 'D' * (num % 1000 / 500)
    c = 'C' * (num % 500 / 100)
  end
  
  if tens == 9
    l = 'X'
    x = 'C'
  elsif tens == 4
    l = 'X'
    x = 'L'
  else
    l = 'L' * (num % 100 / 50)
    x = 'X' * (num % 50 / 10)
  end
  
  if ones == 9
    v = 'I'
    i = 'X'
  elsif ones == 4
    v = 'I'
    i = 'V'
  else
    v = 'V' * (num % 10 / 5)
    i = 'I' * (num % 5 / 1)
  end

  "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"
end