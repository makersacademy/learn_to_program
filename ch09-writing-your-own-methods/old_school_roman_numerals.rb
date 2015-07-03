def old_roman_numeral num
  # your code here
  #for negative numbers and zero we would ask for another number
  if num <= 0
    puts 'please enter a non zero and positive number'
  end

  romanNum = ''
  #now we can set a left number and a write number

  left = num
  write = left/1000
  left = num - write*1000

  while write > 0
    romanNum = romanNum + "M"
    write = write - 1
  end

  if left >= 500
    write = left/500
    left = left - write*500
    romanNum = romanNum + "D"
  end

  if left >= 100
    write = left/100
    left = left - write*100
    while write > 0
      romanNum = romanNum + "C"
      write = write - 1
    end
  end

  if left >= 50
    write = left/50
    left = left - write*50
    romanNum = romanNum + "L"
  end

  if left >= 10
    write = left/10
    left = left - write*10
    while write > 0
      romanNum = romanNum + "X"
      write = write - 1
    end
  end

  if left >= 5
    write = left/5
    left = left - write*5
    romanNum = romanNum + "V"
  end

  if left > 0
    while left > 0
      romanNum = romanNum + "I"
      left = left - 1
    end
  end

  romanNum
end



