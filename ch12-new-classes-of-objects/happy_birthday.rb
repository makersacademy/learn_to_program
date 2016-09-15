puts 'Enter birth year:'
y = gets.chomp.to_i
puts 'Enter birth month (1-12):'
m = gets.chomp.to_i
puts 'Enter birth day:'
d = gets.chomp.to_i

bday = Time.local(y, m, d)
today = Time.new

age = today - bday

(age / (60 * 60 * 24 * 365.25)).to_i.times{puts 'SPANK!'}