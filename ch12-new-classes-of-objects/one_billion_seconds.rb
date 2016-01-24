
def one_billion_seconds

	birth = Time.new(1989, 9, 11, 12, 30)
	a = birth.to_i + 1000000000
	billion = Time.at(a)
	puts "I will be I billion seconds old on #{billion}"

end