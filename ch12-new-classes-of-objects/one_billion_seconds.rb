require 'date'
puts "When is your birthday? (dd/mm/yyyy)"
bday = gets.chomp
day = bday[0..1].to_i
month = bday[3..4].to_i
year = bday[6..9].to_i
dob = Time.new(year,month,day) #A Time is a number of seconds since an epoch whereas a DateTime is a number of days since an epoch which is why adding 1 to a DateTime adds a whole day.
bill_secs = (dob + 1000000000)
if bill_secs <= Time.now
	print "You were 1 billion seconds old on #{bill_secs.strftime "%d/%m/%Y"}."
elsif bill_secs > Time.now	
	print "You will be 1 billion seconds old on #{bill_secs.strftime "%d/%m/%Y"}."
end	