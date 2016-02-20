def seconds_age(year,month,day)
    seconds = Time.new - Time.new(year,month,day)
    until_billion = Time.new + (1000000000 - seconds)
    puts "You are #{seconds} seconds old"
    puts "You were born at #{Time.new- seconds}"
    puts "You will be one billion seconds old on #{until_billion}"
end