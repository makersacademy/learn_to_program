require 'date'
require 'time_difference'

# Today's date
current_date = Time.new
# ask what year a person was born
puts "What year were you born?"
year = gets.chomp
# then the month
puts "What month were you born?"
month = gets.chomp
# then the day
puts "What date were you born?"
date = gets.chomp

# figure out how old they are 
age = Time.mktime(year, month, date)
diff_in_years = TimeDifference.between(age, current_date).in_years.to_i
# give them a big SPANK for each birthday they have had.
puts "Here are #{diff_in_years} spanks for your birthday!"
diff_in_years.times do |spank|
	print "SPANK! "
end