def roman_numeral num
  # your code here
  if num <= 0
    puts 'please enter a non zero and positive number'
  end

  romanNum = ''

  #now we can set a left number and a write number

  #for numbers up to 3000
  left = num
  if left >= 1000
    write = left/1000
    left = num - write*1000
    while write > 0
      romanNum = romanNum + "M"
      write = write - 1
    end
  end

  #if what is left is equal or more than 500
  if left >= 500
    #if what is left is equal or more than 900
    if left >= 900
      romanNum = romanNum + "CM"
      left = left - 900
    else
      romanNum = romanNum + "D"
      write = left/500
      left = left - write*500
    end
  end

  #if what is left is less than 500
  if left >= 100
    #if it is equal or more than 400
    write = left/100
    if left >= 400
      romanNum = romanNum + "CD"
    else
      i = write
      while i > 0
        romanNum = romanNum + "C"
        i = i - 1
      end
    end
    left = left - write*100
  end

  #if what is left is equal or more than 50
  if left >= 50
    #if what is left is equal or more than 90
    if left >= 90
      romanNum = romanNum + "XC"
      left = left - 90
    else
      romanNum = romanNum + "L"
      write = left/50
      left = left - write*50
    end
  end

  #if what is left is less than 50
  if left >= 10
    write = left/10
    if left >= 40
      romanNum = romanNum + "XL"
    else
      i = write
      while i > 0
        romanNum = romanNum + "X"
        i = i - 1
      end
    end
    left = left - write*10
  end

  if left == 9
    romanNum = romanNum + "IX"
    write = 0
    left = 0
  end

  if left >= 5
    write = left/5
    left = left - write*5
    romanNum = romanNum + "V"
  end

  if left > 0
    if left == 4
      romanNum = romanNum + "IV"
      left = 0
    else
      while left > 0
        romanNum = romanNum + "I"
        left = left - 1
      end
    end
  end
  romanNum
end
