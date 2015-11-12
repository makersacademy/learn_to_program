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
	(age/60/60/24/365.25).round.times do
		puts "SPANK"
	end
end

happy_birthday(2010, 9, 11) # => 5
# >> SPANK
# >> You are 163207123.314425 seconds old, which is 2720118.7219070834 minutes,
# >>  45335.31203178472 hours,
# >>  1888.9713346576966 days
# >>  or 5.171721655462551 years old!
# >> SPANK
# >> SPANK
# >> SPANK
# >> SPANK
# >> SPANK