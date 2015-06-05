def roman_to_integer roman
    romanToInt = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
    
    write = 0
    last = 0
    
    roman.reverse.each_char do |alpha|
        validity =  romanToInt[alpha.downcase]
        if !validity
            puts 'This is not a valid roman numeral!'
            return
        end
        if validity < last
            validity *= -1
            else
            last = validity
        end
        write += validity
    end
    write
end

puts roman_to_integer('mcmxcix')
puts roman_to_integer('CCCLXV')
puts roman_to_integer('fscl')