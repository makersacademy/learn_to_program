puts 'What year were you born in?'
year = gets.chomp.to_i

puts 'What month were you born in?'
month = gets.chomp.to_i

puts 'What day were you born in?'
day = gets.chomp.to_i

age = Time.new - Time.gm(year,month,day)


sec_in_a_year = (age/(60*60*24*365)).to_i

puts ("SPANK!"+"\n") * sec_in_a_year
