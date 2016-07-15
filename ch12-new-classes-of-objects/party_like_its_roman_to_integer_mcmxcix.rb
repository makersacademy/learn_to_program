#=begin
def roman_to_integer(roman)
    rom_to_num = [0, # 1
                  0, # 5
                  0, # 10
                  0, # 50
                  0, # 100
                  0, # 500
                  0] # 1000
    
    answer = 0
    
    upper_roman = roman.upcase

    #Catching edge cases to change roman numerals to old roman numerals
    old_roman = upper_roman.gsub("CM","DCCCC").gsub("CD","CCCC").gsub("XC","LXXXX").gsub("XL","XXXX").gsub("IX","VIIII").gsub("IV","IIII")
    
    #Taking apart the 'old_roman' string into individual characters
    chars = old_roman.split('')

    #Iterate through characters, tallying up the totals for each number 
    chars.each do |letter|
        if letter == 'M'
            rom_to_num[6] += 1000
        elsif letter == 'D'
            rom_to_num[5] += 500
        elsif letter == 'C'
            rom_to_num[4] += 100
        elsif letter == 'L'
            rom_to_num[3] += 50
        elsif letter == 'X'
            rom_to_num[2] += 10
        elsif letter == 'V'
            rom_to_num[1] += 5
        elsif letter == 'I'
            rom_to_num[0] += 1
        else
            puts "#{roman} is not valid. Please enter a valid Roman numeral!"
            exit
        end
    end
    
    #Totalling all the character values gives us the answer
    rom_to_num.each do |value|
        answer += value
    end
    
    answer
end

#num = 'CMXLIIIV'
#puts(roman_to_integer(num))
#=end