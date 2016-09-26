require 'date'
puts "When is your birthday? (dd/mm/yyyy)"
bday = gets.chomp
puts "What was the time? (hh:mm:ss). Leave blank if you do not know." 
puts "Use 24 hour clock with 2 digits for hours, mins and secs."
puts "e.g. (for 1pm - when mins and secs are not known, enter 13), "
puts "(for 2:35am - when seconds are not known, enter 02:35), "
puts "(for 8:35:26pm, enter 20:35:26)"
time = gets.chomp
hours = time[0..1].to_i
mins = time[3..4].to_i
secs = time[6..8].to_i

day = bday[0..1].to_i
month = bday[3..4].to_i
year = bday[6..9].to_i
dob = Time.new(year,month,day,hours,mins,secs) #A Time is a number of seconds since an epoch whereas a DateTime is a number of days since an epoch which is why adding 1 to a DateTime adds a whole day.

bill_secs = (dob + 1000000000)
if bill_secs <= Time.now
	print "You were 1 billion seconds old on #{bill_secs.strftime "%d/%m/%Y"} at #{bill_secs.strftime "%H:%M:%S"}."
elsif bill_secs > Time.now	
	print "You will be 1 billion seconds old on #{bill_secs.strftime "%d/%m/%Y"} at #{bill_secs.strftime "%H:%M:%S"}."
end	