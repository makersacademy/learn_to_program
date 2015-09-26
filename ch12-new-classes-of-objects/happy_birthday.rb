puts "what year were you born?"
year = gets.chomp.to_i

puts "What month were you born? Use number, please."
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

date_of_birth = Time.local(year, month, day)

sec_in_year = 60*60*24*365.25

years_old = (Time.new - date_of_birth)/sec_in_year

puts 'SPANK! '*years_old.to_i