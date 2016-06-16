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
        answer << rom_num[a]*numeral[a]
    end

    puts answer
end
