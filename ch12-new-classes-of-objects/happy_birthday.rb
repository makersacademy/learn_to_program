puts "Year born?"
year = gets.chomp.to_i

puts "Month born?"
month = gets.chomp.to_i

puts "Day of month born?"
day = gets.chomp.to_i

age = Time.new - Time.new(year,month,day)

age_is = age.to_i / (60*60*24*365)

puts 

age_is.times do |i|
  puts 'SPANK!'
end
