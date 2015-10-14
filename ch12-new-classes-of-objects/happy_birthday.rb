puts "Year?"
y = gets.chomp

puts "month?"
m = gets.chomp

puts "day?"
d = gets.chomp


his_birth = Time.gm(y, m, d)
now = Time.now

output = now - his_birth
puts output

num = (60*60*24*365) + (60*60*6)
puts num

diff = output / num.to_i
puts diff
# your code here

births = diff.to_i

births.times do |x|
	puts "SPANK!" 
	
end