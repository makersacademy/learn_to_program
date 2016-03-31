puts "What year were you born?"
y = gets.chomp
puts "What month were you born?"
m = gets.chomp
puts "What day (number) were you born?"
d = gets.chomp

date_of_birth = Time.local(y, m, d)
one_year = 365.25*24*60*60
spanks = ((Time.new - date_of_birth) / one_year).to_i
1.upto(spanks) { |i| puts "#{i} : SPANK!" }