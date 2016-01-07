Puts "Please enter the year you were born"
b_year = gets.chomp.to_i

Puts "Please enter the month you were born"
b_month = gets.chomp.to_i

Puts "Please enter the day you were born"
b_day = gets.chomp.to_i

persons_birthday = Time.gm(year, month, day)
years_old = (Time.now - persons_birthday)/(60*60*24*365)
print "Spank!" * years_old
