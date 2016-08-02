def roman_to_integer roman
    roman_numbers = 
    { "m" => 1000,
        "d" => 500,
        "c" => 100,
        "l" => 50,
        "x" => 10,
        "v" => 5,
        "i" => 1
    }
    
    total = 0
    prev = 0
    index = roman.length - 1
    
    while index >= 0
        c = roman[index].downcase
        index = index - 1
        val = roman_numbers[c]
        
        if !val
            puts 'This is not a valid roman numeral!'
            return
        end

        if val < prev
            val = val * -1
        else
            prev = val
        end
    
        total = total + val
    end

    total
end

puts(roman_to_integer('mcmxcix'))




