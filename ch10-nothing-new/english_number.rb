def english_number number
    
    if number < 0 # No negative numbers.
        
        return 'Please enter a number that isn\'t negative.'
        
    end
    
    if number == 0
        
        return 'zero'
        
    end
    
    num_string = ''
    
    ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
    
    tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    
    teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
    
    
    left = number
    
    write = left/(10**48)# How many hundreds left?
    
    left = left - write*(10**48) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        quindecillion = english_number write
        
        num_string = num_string + quindecillion + ' quindecillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**45)# How many hundreds left?
    
    left = left - write*(10**45) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        quattuordecillion = english_number write
        
        num_string = num_string + quattuordecillion + ' quattuordecillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**42)# How many hundreds left?
    
    left = left - write*(10**42) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        tredecillion = english_number write
        
        num_string = num_string + tredecillion + ' tredecillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**39)# How many hundreds left?
    
    left = left - write*(10**39) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        duodecillion = english_number write
        
        num_string = num_string + duodecillion + ' duodecillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**36)# How many hundreds left?
    
    left = left - write*(10**36) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        undecillion = english_number write
        
        num_string = num_string + undecillion + ' undecillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**33)# How many hundreds left?
    
    left = left - write*(10**33) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        decillion = english_number write
        
        num_string = num_string + decillion + ' decillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**30)# How many hundreds left?
    
    left = left - write*(10**30) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        nonillion = english_number write
        
        num_string = num_string + nonillion + ' nonillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**27)# How many hundreds left?
    
    left = left - write*(10**27) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        octillion = english_number write
        
        num_string = num_string + octillion + ' octillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**24)# How many hundreds left?
    
    left = left - write*(10**24) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        septillion = english_number write
        
        num_string = num_string + septillion + ' septillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**21)# How many hundreds left?
    
    left = left - write*(10**21) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        sextillion = english_number write
        
        num_string = num_string + sextillion + ' sextillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**18)# How many hundreds left?
    
    left = left - write*(10**18) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        quintillion = english_number write
        
        num_string = num_string + quintillion + ' quintillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    left = number
    
    write = left/(10**15)# How many hundreds left?
    
    left = left - write*(10**15) # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        quadrillions = english_number write
        
        num_string = num_string + quadrillions + ' quadrillion '
        
        if left > 0
            
            num_string = num_string + ' '
            
        end
        
    end
    
    
    
    
    left = number
    
    write = left/1000000000000# How many hundreds left?
    
    left = left - write*1000000000000 # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        trillions = english_number write
        
        num_string = num_string + trillions + ' trillion '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    
    
    left = number
    
    write = left/1000000000# How many hundreds left?
    
    left = left - write*1000000000 # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        billions = english_number write
        
        num_string = num_string + billions + ' billion'
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    
    
    left = number
    
    write = left/1000000# How many hundreds left?
    
    left = left - write*1000000 # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        millions = english_number write
        
        num_string = num_string + millions + ' million '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    
    
    
    
    left = number
    
    write = left/1000# How many hundreds left?
    
    left = left - write*1000 # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        thousands = english_number write
        
        num_string = num_string + thousands + ' thousand '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    
    left = number
    
    write = left/100 # How many hundreds left?
    
    left = left - write*100 # Subtract off those hundreds.
    
    if write > 0
        
        # Now here's the recursion:
        
        hundreds = english_number write
        
        num_string = num_string + hundreds + ' hundred '
        
        if left > 0
            
            # So we don't write 'two hundredfifty-one'...
            
            num_string = num_string + ' '
            
        end
        
    end
    
    write = left/10 # How many tens left?
    
    left = left - write*10 # Subtract off those tens.
    
    if write > 0
        
        if ((write == 1) and (left > 0))
            
            # Since we can't write "tenty-two" instead of
            
            # "twelve", we have to make a special exception
            
            # for these.
            
            
            num_string = num_string + teenagers[left-1]
            
            # The "-1" is because teenagers[3] is
            
            # 'fourteen', not 'thirteen'.
            
            # Since we took care of the digit in the
            
            # ones place already, we have nothing left to write.
            
            left = 0
            
            else
            
            num_string = num_string + tens_place[write-1]
            
        end
        
        if left > 0
            
            num_string = num_string + '-'
            
        end
        
    end
    
    write = left 
    
    left = 0 
    
    if write > 0
        
        num_string = num_string + ones_place[write-1]
        
    end
    
    num_string
end


puts english_number(100000000000000000000000)
