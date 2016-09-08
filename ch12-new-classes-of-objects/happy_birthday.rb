puts "What year were you born?:"
year = gets.chomp
puts "What month?:"
month = gets.chomp
puts "What day?"
day = gets.chomp

input_time = Time.new(year,month,day)
time_now = Time.new

difference = time_now - input_time
seconds_in_a_year = 60 * 60 * 24 * 365

n = (difference / seconds_in_a_year).to_i
n.times { puts "SPANK!" }
