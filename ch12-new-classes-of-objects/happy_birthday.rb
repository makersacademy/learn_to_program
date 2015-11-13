# your code here
puts "What year were you born?"
year = gets.chomp.to_i
puts "Month?"
month = gets.chomp.to_i
puts "Day?"
day = gets.chomp.to_i

bday = Time.local(year,month,day)
now = Time.now

count = 1
while Time.local(year + count, month, day) <= now
  puts 'SPANK!'
  count += 1
end
