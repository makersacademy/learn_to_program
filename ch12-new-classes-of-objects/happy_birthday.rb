def happy_birthday (birthday)
	years = Time.now.year - birthday.year
	years.times {|i| p 'SPANK!'}
end


#puts happy_birthday (Time.new(1983, 6, 29, 23, 00))