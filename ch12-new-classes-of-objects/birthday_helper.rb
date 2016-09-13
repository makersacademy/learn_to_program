def birthday_helper
    birth_dates = { }

    File.read('birthdays.txt').each_line do |line|
    line = line.chomp

    first_comma = 0

    while line[first_comma] != ',' &&
        first_comma < line.length
        first_comma = first_comma + 1
        end

    name = line[0..(first_comma - 1)]
    date = line[-12..-1]

    birth_dates[name] = date
    end

    puts "whose Birthday?"
    name = gets.chomp
    date = birth_dates[name]

    puts date [0..5]




    end
    
puts (birthday_helper)
        
    
