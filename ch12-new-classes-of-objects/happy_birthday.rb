=begin
Happy birthday! Ask what year a person was born in, 
then the month, and then the day. Figure out how old 
they are, and give them a big SPANK! for each birthday 
they have had.
=end 

def happy_birthday(year, month, day)
	birthday = Time.new(year, month, day)
	age = (Time.now - birthday)
	puts "You are #{age} seconds old, which is #{age/60} minutes,\n #{age/60/60} hours,\n #{age/60/60/24} days\n or #{age/60/60/24/365.25} years old!"

end

happy_birthday(1989, 9, 11) # => nil
# >> You are 825873987.988976 seconds old, which is 13764566.466482934 minutes,
# >>  229409.4411080489 hours,
# >>  9558.72671283537 days
# >>  or 26.170367454716963 years old!