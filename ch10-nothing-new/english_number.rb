def english_number number
    
    if number < 0
        return 'Please'
    end
    if number == 0
        return 'zero'
    end
    
    num_string = ''
    one_place = ['one','two','three','four','five','six','seven','eight','nine']
    teenager_place = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    ten_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    millions = [' thousand', ' million',' billion',' trillion',' quadrillion',' quintillion',' sextillion']
    millions_num = [1000,1000000,1000000000,1000000000000,1000000000000000,1000000000000000000, 1000000000000000000000]
    
    
    left = number
    if left >= 1000
        x = 0
        y = 0
        until number / millions_num[y] >= 1 && number / millions_num[y] <= 999
            #x = x ** y
            y += 1
        end
        #puts x
        puts y
        z = millions_num[y]
        #puts z
        #left = number
        write = left/z
        left = left - (write*z)
        #puts left
        if write > 0
            thousand = english_number write
            num_string = num_string + thousand + millions[y]
            if left > 0
                num_string = num_string + ' '
            end
        end
    end
    #puts left
    
    
    write = left/100
    left = left - write*100
    if write > 0
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    #puts left
    write = left/10
    left = left - write*10
    if write > 0
        if ((write == 1) and (left > 0))
            num_string = num_string + teenager_place[left-1]
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
