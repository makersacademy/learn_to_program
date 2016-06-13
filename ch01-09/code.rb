name = "jordan"

def upper(string)
	string.upcase
end

def lower(string)
	string.downcase
end

def random_name
	["Jordan", "Nikesh"].sample
end

def random_case(name)
	[upper(name), lower(name)].sample
end

puts "Hello #{random_case("Nikesh")}"