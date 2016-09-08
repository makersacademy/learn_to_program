puts "What year were you born in?"
year = gets.chomp.to_i
puts "and what month were you born in?"
month = gets.chomp.to_i
puts "ok...and what day?"
day = gets.chomp.to_i

smacks = 1
now = Time.now


while Time.new(year + smacks, month, day) <=  now
  puts "SMACK"
  smacks += 1
end
