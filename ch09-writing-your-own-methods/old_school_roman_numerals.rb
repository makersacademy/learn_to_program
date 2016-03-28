def old_roman_numeral num
  answer = ''
  #thousands
  to_write = num / 1000
  num %= 1000
  answer += 'M' * to_write
  #500s
  to_write = num / 500
  num %= 500
  answer += 'D' * to_write
  #100s
  to_write = num / 100
  num %= 100
  answer += 'C' * to_write
  #50s
  to_write = num / 50
  num %= 50
  answer += 'L' * to_write
  #10s
  to_write = num / 10
  num %= 10
  answer += 'X' * to_write
  #5s
  to_write = num / 5
  num %= 5
  answer += 'V' * to_write
  #1s
  answer += 'I' * num
  answer
end