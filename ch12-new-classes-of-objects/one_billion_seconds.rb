def the_date_I_turn_a_billion
    #variables of birth
    year = 1985
    month = 10
    day = 15
    puts "The day Christopher Sanchez turns a billion seconds old, given that he was born at Greenwich in 1985-10-15,"
    puts "the date when he becomes really old would be on #{Time.gm(year, month, day) + (10**12)}"
end

the_date_I_turn_a_billion