print "What year were you born? "
year = gets.chomp
print "What month were you born? "
month = gets.chomp
print "What day were you born? "
day = gets.chomp

birth_date = Time.local(year, month, day, 12)
age_secs = Time.now - birth_date
age_years = age_secs.to_f / 60 / 60 / 24 / 365

age_years.to_i.times do
	puts "SPANK"
end