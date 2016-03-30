=begin

Happy birthday! Ask what year a person was born in, then the month,
and then the day. Figure out how old they are, and give them a big SPANK!
for each birthday they have had.

=end
# your code here

puts "what year were you born?"
bday_year = gets.chomp.to_i
puts "what month were you born?"
bday_month = gets.chomp.to_i
puts "what day were you born?"
bday_day = gets.chomp.to_i

date_now = Time.now
b_date = Time.local(bday_year,bday_month,bday_day)

years = date_now.year - b_date.year
if bday_month > date_now.month ||
  (bday_month == date_now.month && bday_day > date_now.day)
  years -= 1
end

puts years.times {print "SPANK! " }