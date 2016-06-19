puts "What year were you born?"
year = gets.chomp

puts "What month were you born?"
month = gets. chomp

puts "what day were you born?"
day = gets.chomp

date_of_birth = Time.local(year, month, day)
birthday = (60*60*24*365)

age = 0 

while date_of_birth <= Time.now
	date_of_birth += birthday
	age += 1
end

(age-1).times {|b| puts "SPANK!"}

