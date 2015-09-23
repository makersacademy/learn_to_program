puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.to_i

puts "What day were you born in?"
day = gets.chomp.to_i

date_of_birth = Time.gm(year, month, day)
current_year = Time.new

seconds_in_one_year = date_of_birth - Time.gm(year-1, month, day)
current_age = ((current_year - date_of_birth) / seconds_in_one_year).to_i

puts "Your current age is: #{current_age} which means you get #{current_age} SPANKs!"
puts
current_age.times{puts "SPANK!"}