# your code here
puts "When where you born?"
puts "Year:"
year = gets.chomp.to_i
puts "Month:"
month = gets.chomp.to_i
puts "Day:"
day = gets.chomp.to_i

birthday = Time.new(year, month, day)

now = Time.new

birthdays = ((now - birthday) / 31622400).to_i

birthdays.times do
    puts "SPANK"
end

