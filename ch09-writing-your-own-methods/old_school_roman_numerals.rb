def old_roman_numeral num
  lenght_of_number = num.to_s.length
    result = ""
  
  for i in 0...lenght_of_number
    number = num % 10
    if i == 0
        if number >= 5
            result = "V"
            (number % 5).times{result << "I"}
            num = num / 10
        else
            (number % 5).times{result << "I"}
            num = num / 10
        end
    elsif i == 1
        if number >= 5
            (number % 5).times{result = "X".concat(result)}
            result = "L".concat(result)
            num = num / 10
        else
            (number % 5).times{result = "X".concat(result)}
            num = num / 10
        end
    elsif i == 2
        if number >= 5
            (number % 5).times{result = "C".concat(result)}
            result = "D".concat(result)
            num = num / 10
        else
            (number % 5).times{result = "C".concat(result)}
            num = num / 10
        end
    else
        number.times{result = "M".concat(result)}
    end
  end
  puts result
end


old_roman_numeral(2999)


