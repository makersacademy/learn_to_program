def happy_birthday
    annual_seconds = 31_536_000 #How many seconds there are in year
    puts "This method caluclates how many birthdays you have had up to this date!"
    puts "So please type in the year you were born;"
    year = gets.chomp
    puts "The month in numbers please;"
    month = gets.chomp
    puts "And finally the day of that month;"
    day = gets.chomp
    age = ((Time.new - Time.local(year, month, day))/annual_seconds).to_i
    puts "Wow! You have had #{age} birthdays!"
    puts "In other words you deserve #{"SPANK! " * age}, one spank for each birthday :D"
end

happy_birthday