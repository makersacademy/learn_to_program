def english_number number
    if number < 0
        return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
        return 'zero'
    end
    
    num_string =''
    one_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    ten_place = ['ten', 'twenty','thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    
    left = number
    write = left/1000000000000
    left = left - write*1000000000000
    if write > 0
        trillion = english_number write
        num_string = num_string + trillion + ' trillion'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    #left = number
    write = left/1000000000
    left = left - write*1000000000
    if write > 0
        billion = english_number write
        num_string = num_string + billion + ' billion'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    #left = number
    write = left/1000000
    left = left - write*1000000
    if write > 0
        million = english_number write
        num_string = num_string + million + ' million'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    #left = number
    write = left/1000
    left = left - write*1000
    if write > 0
        thousand = english_number write
        num_string = num_string + thousand + ' thousand'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    #left = number
    write = left/100 #1
    left = left - write*100 #0
    if write > 0
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    write = left/10
    left = left - write*10
    if write > 0
        if ((write == 1) and (left > 0))
            num_string = num_string + teenagers[left-1]
            left = 0
            else
            num_string = num_string + ten_place[write-1]
        end
        if left > 0
            num_string = num_string + '-'
        end
    end
    
    write = left
    left = 0
    if write > 0
        num_string = num_string + one_place[write-1]
    end
    num_string
end
