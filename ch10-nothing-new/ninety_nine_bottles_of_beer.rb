def english_number number
    if number < 0
    return 'Please enter a positive number.'
    end
    if number == 0
    return 'zero'
    end

    num_string = ''

    ones_place = ['one' , 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty' 'thirty', 'fourty','fifty', 'sixty', 'seventy', 'eighty',
                'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
                'eighteen', 'nineteen']

    left = number
    write = left/1000
    left = left - write*1000

    if write > 0
        thousands = english_number write
        num_string = num_string + thousands + ' thousand'
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

     if ((write ==1) and (left>0))
     num_string = num + teenagers[left-1]
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
end

#end of method that generates the number in english.

#This part adds the loop that writes the song.

num_at_start = 5
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end

puts english_number(num_now)
#calls english number method and feeds it the num_now from loop. 
