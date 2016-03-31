def roman_to_integer roman
roman_array = ["I", "V", "X", "L", "C", "D", "M"]
numbers_array = [1, 5, 10, 50, 100, 500, 1000]

last_char = roman[-1, 1].upcase
numbers = numbers_array[roman_array.index(last_char)]
roman = roman.upcase.split(//)

    roman.each_cons(2) do |roman, nxt|
        current_index = roman_array.index(roman)
            if  current_index > roman_array.index(nxt) || current_index == roman_array.index(nxt)
                  numbers+= numbers_array[current_index]
            elsif current_index < roman_array.index(nxt)
                  numbers -= numbers_array[current_index]
            else
              puts "This is not a valid roman numeral"
              exit
            end
    end
numbers
end
