puts "What year you were born?: "
y = gets.chomp.to_i
puts "What month you were born?: "
m = gets.chomp.to_i
puts "What day you were born?: "
d = gets.chomp.to_i

def spank(y, m ,d)
	nr_of_spanks = (Time.now.to_i - Time.new(y, m, d).to_i) / 60 / 60 / 24 / 365
	return nr_of_spanks.times {puts "SPANK!"}
end

spank(y, m, d)