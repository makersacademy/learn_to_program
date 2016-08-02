def roman_numeral num
    lenght_of_number = num.to_s.length
    result = ""
    
    for i in 0...lenght_of_number
    number = num % 10
    temp = ""
    
        if i == 0
            temp = number_converter(number, "I", "V", "X")
            num = num / 10
            result = temp.concat(result)
        elsif i == 1
            temp = number_converter(number, "X", "L", "C")
            num = num / 10
            result = temp.concat(result)
        elsif i == 2
            temp = number_converter(number, "C", "D", "M")
            num = num / 10
            result = temp.concat(result)
        else
            number.times{result = "M".concat(result)}
        end
    end
    puts result
end



def number_converter arabian_number, lowest_roman_number, set_of_fives, highest_roman_number
    if arabian_number == 9
        return lowest_roman_number.concat(highest_roman_number) 
    elsif arabian_number >= 5
        lower_numbers = ""
        (arabian_number % 5).times{ lower_numbers.concat(lowest_roman_number)}
        return set_of_fives.concat(lower_numbers)
    elsif arabian_number == 4
        return lowest_roman_number.concat(set_of_fives)
    else
        lower_numbers = ""
        (arabian_number % 5).times{ lower_numbers.concat(lowest_roman_number)}
        return lower_numbers
    end 
end


roman_numeral(2619)
