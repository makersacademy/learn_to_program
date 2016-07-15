def bottle_song bottles
    
    x = bottles
    y = english_number x
    
    while x > 0
        y = english_number x
        z = english_number x-1
        puts "#{y} bottles of beer on the wall, #{y} bottle of beer. Take one down, pass it around, #{z} bottles of beer on the wall."
        x -= 1
    end
end

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
    millions = [' thousand', ' million',' billion',' trillion',' quadrillion',' quintillion',' sextillion', ' septillion', ' octillion',' nonillion',' decillion',' undecillion',' duodecillion',' tredecillion',' quattuordecillion', ' quindecillion', ' sexdecillion']
    millions_num = [ 1000,1000000,1000000000,1000000000000,1000000000000000,1000000000000000000, 1000000000000000000000,1000000000000000000000000,1000000000000000000000000000,1000000000000000000000000000000, 1000000000000000000000000000000000, 1000000000000000000000000000000000000,1000000000000000000000000000000000000000,1000000000000000000000000000000000000000000,1000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000,1000000000000000000000000000000000000000000000000000]
    
    left = number
    
    x = millions_num[16]
    write = left/x
    left = left - write*x
    if write > 0
        sexdecillion = english_number write
        num_string = num_string + sexdecillion + millions[16]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[15]
    write = left/x
    left = left - write*x
    if write > 0
        quindecillion = english_number write
        num_string = num_string + quindecillion + millions[15]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[14]
    write = left/x
    left = left - write*x
    if write > 0
        quattuordecillion = english_number write
        num_string = num_string + quattuordecillion + millions[14]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[13]
    write = left/x
    left = left - write*x
    if write > 0
        tredecillion = english_number write
        num_string = num_string + tredecillion + millions[13]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[12]
    write = left/x
    left = left - write*x
    if write > 0
        duodecillion = english_number write
        num_string = num_string + duodecillion + millions[12]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    
    
    
    x = millions_num[11]
    write = left/x
    left = left - write*x
    if write > 0
        undecillion = english_number write
        num_string = num_string + undecillion + millions[11]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    
    x = millions_num[10]
    write = left/x
    left = left - write*x
    if write > 0
        decillion = english_number write
        num_string = num_string + decillion + millions[10]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[9]
    write = left/x
    left = left - write*x
    if write > 0
        nonillion = english_number write
        num_string = num_string + nonillion + millions[9]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[8]
    write = left/x
    left = left - write*x
    if write > 0
        octillion = english_number write
        num_string = num_string + octillion + millions[8]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[7]
    write = left/x
    left = left - write*x
    if write > 0
        septillion = english_number write
        num_string = num_string + septillion + millions[7]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[6]
    write = left/x
    left = left - write*x
    if write > 0
        sextillion = english_number write
        num_string = num_string + sextillion + millions[6]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[5]
    write = left/x
    left = left - write*x
    if write > 0
        quintillion = english_number write
        num_string = num_string + quintillion + millions[5]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[4]
    write = left/x
    left = left - write*x
    if write > 0
        quadrillion = english_number write
        num_string = num_string + quadrillion + millions[4]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[3]
    write = left/x
    left = left - write*x
    if write > 0
        trillion = english_number write
        num_string = num_string + trillion + millions[3]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    x = millions_num[2]
    write = left/x
    left = left - write*x
    if write > 0
        billion = english_number write
        num_string = num_string + billion + millions[2]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    
    x = millions_num[1]
    write = left/x
    left = left - write*x
    if write > 0
        million = english_number write
        num_string = num_string + million + millions[1]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    
    write = left/1000
    left = left - write*1000
    if write > 0
        thousands = english_number write
        num_string = num_string + thousands + millions[0]
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    write = left/100
    left = left - write*100
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

puts bottle_song 9999