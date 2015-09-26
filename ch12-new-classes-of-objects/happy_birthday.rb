# Samuel Overloop, 26/09/2015 12:26 UTC +01
# I deletd it now :)
puts "what is your birthday year?"
birthday_year = gets.chomp.to_i

puts "what is your birthday month (input number please, 1 to 12)?"
birthday_month = gets.chomp.to_i

puts "What is your birthday date?"
birthday_day = gets.chomp.to_i

birthday = Time.local(birthday_year,birthday_month,birthday_day)

puts birthday

t = Time.new

age = (t - birthday)/31536000

puts "SPANK!" * age

# your code here
