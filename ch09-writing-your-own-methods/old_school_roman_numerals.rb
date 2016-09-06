def old_roman_numeral num
  while num.to_i <= 3000
    array = num.to_s.split(//).map { |x| x.to_i }
    result =[]
    until array.length == 4
      array.unshift(0)
    end
    if array[-4] < 5
        number = array[-4]
        number.times { result << "M" }
    end
    if array[-3] < 5
        number = array[-3]
        number.times { result << "C" }
    else
        number = array[-3]
        result << "D"
        (number-5).times { result << "C" }
    end
    if array[-2] < 5
        number = array[-2]
        number.times { result << "X" }
    else
        number = array[-2]
        result << "L"
        (number-5).times { result << "X" }
    end
    if array[-1] < 5
        number = array[-1]
        number.times { result << "I" }
    else
        number = array[-1]
        result << "V"
        (number-5).times { result << "I" }
    end
    puts result.join("")
    exit
  end
  puts "Number must be greater than 3000."
  exit
end
