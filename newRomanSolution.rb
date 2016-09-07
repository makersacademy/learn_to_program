def old_roman_numeral num
  numeral = ('')
  ((num / 1000).to_i).times {numeral << 'M'} #adds number of M´s needed for 1000
  num = num % 1000

  if num >= 500
    numeral << 'D'
    ((num / 100).to_i - 5).times {numeral << 'C'}
  elsif num == 400
    numeral << 'C' + 'D'
  else
    ((num / 100).to_i).times {numeral << 'C'}
  end

  num = num % 100
  if num >= 50
    numeral << 'L'
    ((num / 10).to_i - 5).times {numeral << 'X'}
  elsif num == 40
    numeral << 'X' + 'L'

  else
    ((num / 10).to_i).times {numeral << 'X'}
  end

  num = num % 10
  if num > 5
    numeral << 'V' + ('I' * (num - 5))
    ((num / 1).to_i - 5).times {numeral << 'I'}
  elsif num == 5
    numeral << 'V'
  elsif num == 4
    numeral << 'IV'
  else
    ((num / 1).to_i).times {numeral << 'I'}
  end

  puts numeral
end

old_roman_numeral 1040