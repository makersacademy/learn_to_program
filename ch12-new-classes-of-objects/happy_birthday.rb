puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? Use number such as 1-12. e.g. 1 for January etc.."
month = gets.chomp.to_i

puts "What day were you born on?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
time = Time.new

if time.month - month < 0
	age = time.year - year 
elsif time.day - day < 0
	age = time.year - year
else
	age = time.year - year
end

puts "You must be #{age} years old!  Here are some birthday SPANKS!"

age.times { puts "SPANK!"}