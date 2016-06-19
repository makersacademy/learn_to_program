puts "What year were you born?"
year = gets.chomp!

puts "What month were you born?"
month = gets.chomp!

puts "What day were you born"
day = gets.chomp!

time = Time.new
birthday = Time.gm(year, month, day)

years_old = (time - birthday)/(60*60*24*365)

years_old.round.times do
  puts "SPANK!"
end
