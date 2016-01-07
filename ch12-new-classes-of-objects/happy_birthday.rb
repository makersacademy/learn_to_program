puts "What year were you born in?"
year = gets.chomp
puts "What month were you born in?"
month = gets.chomp
puts "What day were you born in?"
day = gets.chomp

birthday = Time.gm(year, month,day)
puts birthday
spank = ((Time.new - birthday)/(60 * 60 *24* 365)).floor
puts spank
spank.times {puts "SPANK"}
