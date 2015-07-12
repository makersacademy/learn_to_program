def old_roman_numeral num

  numString = ''

  onesPlace = ['I',     'II',       'III',    'IIII',     'V',
               'VI',     'VII',     'VIII',    'VIIII']

  left  = num
  write = left/1000
  left  = left - write*1000

  if write > 0
      numString = numString + "M"*write
  end

  write = left/500
  left  = left - write*500

  if write > 0
      numString = numString + "D"*write
  end

  write = left/100
  left  = left - write*100

  if write > 0
      numString = numString + "C"*write
  end

  write = left/50
  left  = left - write*50

  if write > 0
      numString = numString + "L"*write
  end

  write = left/10
  left  = left - write*10

  if write > 0
      numString = numString + "X"*write
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
      numString = numString + onesPlace[write-1]
  end

  puts  numString

end

puts "Please enter an integer between 0 to 3000"
value = gets.chomp.to_i
old_roman_numeral value
