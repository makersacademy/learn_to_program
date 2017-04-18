def happy_birthday
    puts "When's your birthday? Please put in DDMMYYYY format."
    reply = gets.chomp
    
    b_day = reply[0..1].to_i
    b_month = reply[2..3].to_i
    b_year = reply[4..7].to_i
    
    birthday = Time.gm(b_year, b_month, b_day)
    time = Time.new
    
    t_day = time.day
    t_month = time.month
    t_year = time.year
    
    age = t_year - b_year
    
    if t_month < b_month || (t_month == b_month && t_day < b_day)
        age =- 1
    end
    
    if (t_day == b_day && t_month == b_month)
        puts "Happy birthday!"
    end
    
    puts "SPANK " * age
    
end
