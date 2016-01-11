puts "What year were you born?"
yyyy = gets.chomp.to_i

puts "What month?"
mm = gets.chomp.to_i

puts "What day?"
dd = gets.chomp.to_i

born = Time.new(yyyy, mm, dd)
now = Time.new
age = (now - born) /60/60/24/365
age = age.to_i

puts "You are #{age} years old!"
age.times do
  puts 'SPANK!'
end
