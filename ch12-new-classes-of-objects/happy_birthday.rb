def num_of_bdays birthday

puts "Here's what you got coming.."

a_year = 31536000

  ((Time.now - birthday) / a_year).to_i.times {puts "*SPANK*"}

end

puts "What year were you born in?"

y = gets.chomp

puts "What month were you born in?"

m = gets.chomp

puts "What day were you born on?"

d = gets.chomp

num_of_bdays(Time.gm(y, m, d))
