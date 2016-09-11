=begin

Set use Time.local to set my date of birth and add 1 billion from answer.
	
=end

def one_billion_seconds()

	time_one_billion_seconds_from_your_birth = Time.local(1980, 1, 6, 13, 30) + 1000000000

	print "One billion seconds from the moment your are born will be on the #{time_one_billion_seconds_from_your_birth}\n"

end

one_billion_seconds