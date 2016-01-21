month_list = ['january','february','march','april','may','june','july','august','september','october','november','december']

puts "What year you were born in? (YYYY)"
year_born = gets.chomp

puts "What month you were born in? (month name or MM)"
month_born = gets.chomp

if month_list.include?(month_born)
  month_born = month_list.index(month_born) +1
end

puts "What day you were born in? (DD)"
day_born = gets.chomp

years_old = Time.new - Time.mktime(year_born.to_i , month_born.to_i, day_born.to_i)

(years_old/(60*60*24*365)).to_i.times {
  puts 'SPANK!'
}