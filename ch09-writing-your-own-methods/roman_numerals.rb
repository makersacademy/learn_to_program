#Old Method

=begin
def roman_numeral(num)
    digits = [1000, 500, 100, 50, 10, 5, 1]
    numeral = [0, 0, 0, 0, 0, 0, 0]
    rom_num = ['M','D','C','L','X','V','I']
    answer = ' '
    h = 0
    
    digits.each do |z|
        if num / z > 0
            numeral[h] = (num / z)
            num = num % z
        end
        h += 1
    end
    
    for a in 0..numeral.size - 1 do
        if numeral[1]+numeral[2] == 5
            answer << "CM"
            numeral[1] = 0
            numeral[2] = 0
        elsif numeral[2] == 4
            answer << "CD"
            numeral[2] = 0
        elsif numeral[3] + numeral[4] == 5
            answer << "XC"
            numeral[3] = 0
            numeral[4] = 0
        elsif numeral[4] == 4
            answer << "XL"
            numeral[4] = 0
        elsif numeral[5] + numeral[6] == 5
            answer << "IX"
            numeral[5] = 0
            numeral[6] = 0
        elsif numeral[6] == 4
            answer << "IV"
            numeral[6] = 0
        else
            answer << rom_num[a] * numeral[a]
        end
    end

    puts answer
end
=end

#Refactored Method
def roman_numeral(num)
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
        answer << digits[2][a] * digits[1][a]
        answer = answer.gsub("DCCCC","CM").gsub("CCCC","CD").gsub("LXXXX","XC").gsub("XXXX","XL").gsub("VIIII","IX").gsub("IIII","IV") #Catching edge cases to update old school roman numeral
    end

    answer.strip
end

#roman_numeral(949)