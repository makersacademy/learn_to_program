puts "When is your bithday?"
puts "Year (YYYY):"
year = gets.chomp
puts "Month (MM):"
month = gets.chomp
puts "Day (DD):"
day = gets.chomp
puts "Thanks! Preparing birthday spanks..."

years_lived = Time.now.to_s.slice(0, 4).to_i - year.to_i
current_month = Time.now.to_s.slice(6, 8).to_i
current_day = Time.now.to_s.slice(10, 12).to_i

(years_lived - 1).times do
	puts "SPANK!"
end

puts "SPANK" if current_month > month.to_i and current_day > day.to_i