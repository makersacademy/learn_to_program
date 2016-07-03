puts "What year were born in?"
year = gets.chomp.to_i
puts "And what month? (1 - 12)"
month = gets.chomp.to_i
puts "And what day?"
day = gets.chomp.to_i

time_now = Time.new
how_old = time_now - Time.gm(year, month, day)
age = 1
while Time.gm(year + age, month, day) <= time_now
  puts "SPANK!"
  age += 1
end
=begin
minutes = how_old / 60
hours = minutes / 60
days = hours / 24
years = days / 365
=end
