puts "Hey there, what year were you born in?"
year = gets.chomp.to_i

puts "Thanks! And what month?"
month = gets.chomp.to_i

puts "Great, lastly, what date were you born?"
day = gets.chomp.to_i 

birthday = Time.gm(year, month, day)
time = Time.new 

age = 1 

until (birtday + 1) >= time 
puts "SPANK!"
age = age +1 
end 

