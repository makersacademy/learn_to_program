# your code here
puts 'what year were you born?'
year = gets.chomp.to_i
puts 'what month?'
month = gets.chomp.to_i
puts 'and the day?'
day = gets.chomp.to_i
birthday = Time.local(year, month, day)
diff =  Time.new - birthday
age = diff.to_i/60/60/24/365
puts "you are #{age} years old"
age.to_i.times {|s| puts 'SPANK!'}
