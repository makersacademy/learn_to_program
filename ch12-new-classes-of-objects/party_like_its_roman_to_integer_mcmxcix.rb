def roman_to_integer(roman)
romannums = { "i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000  }
roman.downcase!

prev = 0
total = 0
index = (roman.length)-1

while index >= 0
    current = roman[index]
    value = romannums[current]
    if value == 0  
       puts "This isn't a valid Roman Numeral"
       return
    end
    if value < prev 
        total = total - value
    else value > prev
        total = total + value 
    end
    index = index -1
    prev = value
    end
total
end
