now = Time.new

puts "What year were you born?"
year = gets.chomp
puts "and the number of the month?"
month = gets.chomp
puts "and the day?"
day = gets.chomp

born = Time.gm(year, month, day)

years = (((((now - born)/60)/60)/24)/365).to_i

puts "Spank!\n"*years
