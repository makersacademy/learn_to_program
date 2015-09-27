require_relative './english_number'

total_number_of_bottles = 10

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
