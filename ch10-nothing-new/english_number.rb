def english_number (number)
    return "Please enter number that isn't negative." if number < 0
    return "zero" if number == 0
    
    num_string = ""
    
    ones_place = %w(one two three four five six seven eight nine)
    tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    zillions = [["hundred", 2], ["thousand", 2], ["million", 3], ["billion", 4], ["trillion", 5]]
    
    left = number

    while zillions.length > 0
        zil_pair = zillions.pop
        zil_name = zil_pair[0]
        zil_base = 10 ** zil_pair[1]
        write = left/zil_base
        left = left - write*zil_base

        if write > 0
        prefix = english_number write
        num_string = num_string + prefix + " " + zil_name

            if left > 0
            num_string = num_string + ' '
            end
        end
    end
    
    write = left / 10
    left = left - write * 10
    
    if write > 0
        if ((write == 1) && (left > 0))
            num_string = num_string + teenagers[left-1]
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end
        
        if left > 0
            num_string = num_string + "-"
        end
    end
    
    write = left
    left = 0
    
    if write > 0
        num_string = num_string + ones_place[write-1]
    end
    
    num_string
end