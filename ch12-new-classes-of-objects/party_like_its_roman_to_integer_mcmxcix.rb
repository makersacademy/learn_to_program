def roman_to_integer roman
    values = {'i' => 1,
              'v' => 5,
              'x' => 10,
              'l' => 50,
              'c' => 100,
              'd' => 500,
              'm' => 1000}
              
        total = 0
        prev = 0
        
    roman.reverse.each_char do |lower|
        lowcase = lower.downcase
        value = values[lowcase]
        if values[lowcase] != value
            return 'Not a valid roman numeral!'
        end
        
        if value < prev
            value *= -1
        else
            prev = value
        end
        
        total += value
    end
    total
end