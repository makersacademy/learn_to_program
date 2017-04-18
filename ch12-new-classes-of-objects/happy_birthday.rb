puts "What year were you born in? (YYYY)"
year = gets.chomp.to_i
puts "What month were you born in? (1-12)"
month = gets.chomp.to_i
puts "What day were you born on?"
day = gets.chomp.to_i
((Time.new - Time.local(year,month,day))/31557600).to_i.times do
  puts "SPANK!"
end