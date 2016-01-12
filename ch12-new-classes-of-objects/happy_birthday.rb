puts "What year were you born?"
year = gets.chomp

puts "...and what month?"
month = gets.chomp

puts "...and finally, what day?"
day = gets.chomp

time_now = Time.new
difference = ((Time.new - Time.gm(year, month, day))/(60*60*24*365.25)).to_i

difference.times do |x|
	puts "#{x+1}. SPANK!"
end
