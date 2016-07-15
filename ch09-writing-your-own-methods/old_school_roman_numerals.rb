=begin
# Old method
def old_roman_numeral(num)
    rom_num = ' '
    while num != 0
        if num / 1000 > 0
            rom_num << "M" * (num / 1000)
            num = num % 1000
        elsif num / 500 > 0
            rom_num << "D" * (num / 500)
            num = num % 500
        elsif num / 100 > 0
            rom_num << "C" * (num / 100)
            num = num % 100
        elsif num / 50 > 0
            rom_num << "L" * (num / 50)
            num = num % 50
        elsif num / 10 > 0
            rom_num << "X" * (num / 10)
            num = num % 10
        elsif num / 5 > 0
            rom_num << "V" * (num / 5)
            num = num % 5
        else
            rom_num << "I" * num
            num = 0
        end
    end

    rom_num
end
=end

# Refactored method
def old_roman_numeral(num)
    digits = [[1000, 500, 100, 50, 10, 5, 1], [0, 0, 0, 0, 0, 0, 0], ['M','D','C','L','X','V','I']]
    answer = ' '
    h = 0
    
    digits[0].each do |z|
        if num / z > 0
            digits[1][h] = (num / z) #Counting the number of 10s, 50s, 100s, etc in num
            num = num % z #Using the remainder as the next value of num
        end
        h += 1
    end

    for a in 0..digits[1].size - 1 do #Iterate through array to calculate roman numerals old school style
        answer << digits[2][a]*digits[1][a] #Concatenate string ready to output old school roman numerals
    end

    answer.strip
end

#old_roman_numeral(949)