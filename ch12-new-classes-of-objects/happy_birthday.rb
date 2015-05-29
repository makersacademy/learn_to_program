p "Which year were you born in?"
year = gets.chomp
p "...and which month?"
month = gets.chomp
p "...and which day?"
day = gets.chomp

birthday = Time.local(year, month, day)
years = (Time.now - birthday) / 3.15569e7
age = years.to_i
age.times { p "SPANK!"}
