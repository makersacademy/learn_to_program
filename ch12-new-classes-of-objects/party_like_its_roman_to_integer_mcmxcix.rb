def roman_to_integer roman_num
    #values= {'i' => 5, 'v' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
values = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
    n= 0
    previous= 0
    index= roman_num.length-1
    while index >= 0
        small= roman_num[index].downcase
        index= index - 1
        val= values[small]

        if !val
            puts "this is not a roman number"
            return
        end

        if val < previous
            val= val * -1
        else
            previous= val
        end
        n+= val
    end
    n
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))