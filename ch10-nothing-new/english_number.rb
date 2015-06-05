def english_number number
    if number < 0
        return "Please enter a positive number."
    end
    if number == 0
        return "zero"
    end
    
    num_string = ''
    
    ones_place = [ 'one','two','three','four','five','six','seven','eight','nine']
    tens_place = [ 'ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    
    left = number
    write = left / 1000000000
    left -= write * 1000000000
    
    if write > 0
        trillion = english_number write
        if write == 1
            num_string += trillion + ' trillion'
            else
            num_string += trillion + ' trillions'
        end
        if left > 0
            num_string += ' '
        end
    end
    
    write = left / 1000000
    left -= write * 1000000
    
    if write > 0
        millions = english_number write
        if write == 1
            num_string += millions + ' million'
            else
            num_string += millions + ' millions'
        end
        if left > 0
            num_string += ' '
        end
    end
    
    write = left / 1000
    left -= write * 1000
    
    if write > 0
        thousand = english_number write
        if write == 1
            num_string += thousand + ' thousand'
            else
            num_string += thousand + ' thousands'
        end
        if left > 0
            num_string += ' '
        end
    end
    
    write = left / 100
    left -= write * 100
    
    if write > 0
        hundred = english_number write
        if write == 1
            num_string += hundred + ' hundred'
            else
            num_string += hundred + ' hundreds'
        end
        if left > 0
            num_string += ' and '
        end
    end
    
    write = left / 10
    left -= write * 10
    
    if write > 0
        if (write == 1 && left > 0)
            num_string += teenagers[left - 1]
            left = 0
            else
            num_string += tens_place[write - 1]
        end
        
        if left > 0
            num_string += '-'
        end
    end
    
    write = left / 1
    left = 0
    
    if write > 0
        num_string += ones_place[write - 1]
    end
    
    num_string
end

puts english_number(4)
puts english_number(23)
puts english_number(654)
puts english_number(2343)
puts english_number(56463)
puts english_number(898764)
puts english_number(5243524)
puts english_number(66445363)
puts english_number(896545333)
puts english_number(1000000000)
puts english_number(324234234324)


















