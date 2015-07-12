def roman_numeral num

    numString = ''

    onesPlace = ['I',     'II',       'III',    'IV',     'V',
                 'VI',     'VII',     'VIII',    'IX']

    left  = num
    write = left/1000
    left  = left - write*1000

    if write > 0
        numString = numString + "M"*write
    end

    s900 = left/100
    write = left/500
    left  = left - write*500


    if write > 0 && !(s900 >= 9)
        numString = numString + "D"*write
      elsif s900 >= 9
      numString = numString + "CM"
    end

    s400 = left/100
    write = left/100
    left  = left - write*100

    if write > 0 && !(s900 >= 9) && !(s400 == 4)
        numString = numString + "C"*write
      elsif s400 == 4 && !(s900 >= 9)
         numString = numString + "CD"
    end

      write = left/50
    left  = left - write*50

    if write > 0
        numString = numString + "L"*write
    end

    s40 = left/10
    write = left/10
    left  = left - write*10

    if write > 0 && !(s40 >= 4)
        numString = numString + "X"*write
      elsif s40 == 4
         numString = numString + "XL"
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
  roman_numeral value
