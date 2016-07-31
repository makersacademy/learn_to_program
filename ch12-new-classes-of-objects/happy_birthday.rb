puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? (1-12)"
month = gets.chomp.to_i

puts "What day of the month were you born on?"
day = gets.chomp.to_i

now = Time.new

if month < now.month || month == now.month && day <= now.day
  age = now.year - year
else
  age = now.year - year - 1
end

age.times do
  puts "SPANK!"
end
