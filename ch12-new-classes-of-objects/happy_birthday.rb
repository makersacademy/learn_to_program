# your code here
puts "please put year of birth"
y = gets.chomp
puts "please put month of birth"
m = gets.chomp
puts "please put day of birth"
d = gets.chomp

bday = Time.local(y, m, d)
years = ((Time.new - bday) / (365 * 24 * 60 * 60)).to_i
years.times do
  puts "Spank!"
end

