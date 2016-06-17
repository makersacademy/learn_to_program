# your code here
puts "What year were you born?"
year = gets.chomp.to_i
puts "What number month were you born?"
month = gets.chomp.to_i
puts "What day were you born?"
day = gets.chomp.to_i

birthday = Time.gm(year, month, day)

age = ((Time.new - birthday)/60/60/24/365).to_i

puts "You are #{age} years old!"
puts "Here are your birthday spanks! (oo eer!)"
puts

age.times do
  puts "SPANK!"
end
