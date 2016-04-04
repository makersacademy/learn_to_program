def birthday_counter
puts "When is your birthday? - (in format 'Year,Month,Day')"
birthday = gets.chomp
years = Time.now.year - Time.new(birthday).year
if Time.now.month < Time.new(birthday).month
  years.times do
    puts "spank"
  end
else
  (years-1).times do
  puts "spank"
end
end
end

#works!
