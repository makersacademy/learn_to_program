def roman_numeral num

  number = String.new

  number_array = num.to_s.split('')

  thousands = number_array[0..-4].join('').to_i
  thousands.times do |n|
    number << "M"
  end



  hundereds = number_array[-3].to_i * 100
  if hundereds >= 500
    if hundereds == 900
      number << "CM"
    else
      number << "D"
      until hundereds == 500
        number << "C"
        hundereds -= 100
      end
    end
  else
    if hundereds == 400
      number << "CD"
    else
      hundereds = hundereds / 100
      hundereds.times do |n|
        number << "C"
      end
    end
  end

  tens = number_array[-2].to_i * 10
  if tens >= 50
    if tens == 90
      number << "XC"
    else
      number << "L"
      until tens == 50
        number << "X"
        tens -= 10
      end
    end
  else
    if tens == 40
      number << "XL"
    else
      tens = tens / 10
      tens.times do |n|
        number << "X"
      end
    end
  end

  singles = number_array[-1].to_i
  if singles >= 5
    if singles == 9
      number << "IX"
    else
      number << "V"
      until singles == 5
        number << "I"
        singles -= 1
      end
    end
  else
    if singles == 4
      number << "IV"
    else
      singles.times do |n|
        number << "I"
      end
    end
  end


  return number

end

puts roman_numeral(40)
puts roman_numeral(110)
puts roman_numeral(1999)
