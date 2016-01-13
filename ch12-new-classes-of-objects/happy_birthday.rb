puts 'What year were you born?'
birth_year = gets.chomp.to_i

puts 'What month were you born?'
month = gets.chomp.to_i

puts "What day of the month were you born?"
day = gets.chomp.to_i

birthday = Time.gm(birth_year, month, day)
today = Time.new

# this captures years but says a year older as today is before my birthday month
# times_spank = Time.new.year - birth_year
# puts 'Spank!' * times_spank

times_spank = Time.new.year - birth_year

if Time.new.month < month
	round_down_age = times_spank - 1
end 

puts 'Spank!' * round_down_age

puts round_down_age

# code runs but cannot get rspec to run (load issues...)


