# your code here
puts "Which year were you born?"
year = gets.chomp!

puts "Which month were you born?"

month = gets.chomp!

puts "Which day in #{month} were you born?"

day = gets.chomp!

born = Time.local(year, month, day)
current_time = Time.new

years_old = (current_time - born) / 3.154e+7

puts "SMACK!" * years_old
