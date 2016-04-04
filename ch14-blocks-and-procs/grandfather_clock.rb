def clock &chime

	x = Time.new.hour

	if x > 12
		x = x-12
	elsif x == 0
		x = 12
	end

	x.times{chime.call}

end

	clock do
	 puts "DONG!"
	end
