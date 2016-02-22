# your code here

puts "What year where you born?"
year = gets.chomp
puts "What month were you born? Give it as a number"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

born_on = Time.local(year,month,day)
time = Time.now
age_secs = (time - born_on)
spank_no = age_secs / (60*60*24*365)

spank_no.to_i.times {puts "SPANK!"}
