#10.5: Expanded English Numbers

def english_number(number)
    if number < 0
        return "Please enter a number that isn\'t negative."
    end
    
    if number == 0 
        return "zero"
    end
    
    num_string = ' '
    
    ones_place =    ['one',       'two',      'three',
                    'four',       'five',     'six',
                    'seven',      'eight',    'nine']
    tens_place =    ['ten',       'twenty',   'thirty',
                    'forty',      'fifty',    'sixty',
                    'seventy',    'eighty',   'ninety']
    teenagers =     ['eleven',    'twelve',   'thirteen',
                     'fourteen',  'fifteen',  'sixteen',
                     'seventeen', 'eighteen', 'nineteen']
    
    zillions =  [['hundred', 2],
                ['thousand', 3],
                ['million', 6],
                ['billion', 9],
                ['trillion', 12],
                ['quadrillion', 15],
                ['quintillion', 18],
                ['sextillion', 21],
                ['septillion', 24],
                ['octillion', 27],
                ['nonillion', 30],
                ['decillion', 33],
                ['undecillion', 36],
                ['duodecillion', 39],
                ['tredecillion', 42],
                ['quattuordecillion', 45],
                ['quindecillion', 48],
                ['sexdecillion', 51],
                ['septendecillion', 54],
                ['octodecillion', 57],
                ['novemdecillion', 60],
                ['vigintillion', 63],
                ['googol', 100]]
    
    left = number #how much of the number we still have left to write out
    
    while zillions.length > 0
        zil_pair = zillions.pop #take the last value from zillions
        zil_name = zil_pair[0] #use the name part of the element to get the zillions name
        zil_base = 10**zil_pair[1] #use the value part of the element to use as the exponent
        
        write = left/zil_base #calculate how many zillions are in the number
        left = left - write*zil_base #find out how much of the number is remaining (this is the same as left = number%zil_base)
        
        if write > 0
            prefix = english_number(write)
            num_string = num_string + prefix + ' ' + zil_name
            
            if left > 0
                num_string = num_string + ' '
            end
        end
    end

    write = left/10 #find out how many 10s are in the number
    left = left - write*10 #find out how much of the number is remaining (this is the same as left = number%10)
    
    if write > 0
        if(write == 1) && (left > 0) #this checks for 11-19
            num_string = num_string + teenagers[left-1]
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end
        
        if left > 0
            num_string = num_string + '-'
        end
    end
    
    write = left #check how many 1s are left
    left = 0
    
    if write > 0
        num_string = num_string + ones_place[write-1]
    end
    
    num_string.strip
end