#get birthday
puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born?"
month = gets.chomp.to_i
puts "What day were you born?"
day = gets.chomp.to_i

#compare today with birthday
today = Time.new
birthday = Time.local(year, month, day)
difference = today - birthday
years = (difference/60/60/24/30/12).to_i

#spank em!
years.times do
puts "#{counter}: SPANK!"
end
