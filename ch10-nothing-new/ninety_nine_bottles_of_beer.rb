# LEARNING TO PROGRAM WITH CHRIS PINE, 9.5 ex 1
###############################################
# “Ninety-nine Bottles of Beer on the Wall.” Using english_number and your
# old program on page 49, write out the lyrics to this song the right way this
# time. Punish your computer: have it start at 9999. (Don’t pick a number
# too large, though, because writing all of that to the screen takes your
# computer quite a while. A hundred thousand bottles of beer takes some
# time; and if you pick a million, you’ll be punishing yourself as well!)

require_relative './english_number'

total_number_of_bottles = 30

until total_number_of_bottles == 0 do

    total_number_of_bottles -= 1
    if (total_number_of_bottles > 1)
        puts english_number(total_number_of_bottles) + " bottles of beer on the wall, " + english_number(total_number_of_bottles) + " bottles of beer."
        puts "Take one down and pass it around, " + english_number(total_number_of_bottles-1) + " bottles of beer on the wall."
        puts ' '
    elsif (total_number_of_bottles == 1)
        puts english_number(total_number_of_bottles) + " bottle of beer on the wall, " + english_number(total_number_of_bottles) + " bottle of beer."
        puts "Take one down and pass it around, no more bottles of beer on the wall."
        puts ' '
    else
        puts 'No more bottles of beer on the wall, no more bottles of beer.'
        puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
        puts ''
    end
end
