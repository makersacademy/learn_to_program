require 'date'

def one_billion_seconds birthdate
	billion = birthdate + 10**9

	# suffix = day_suffix(billion.strftime("%d"))

	puts "I turned one billion seconds old on the #{billion.strftime("%d")}#{day_suffix(billion.strftime("%d"))} of #{billion.strftime("%B")}, #{billion.strftime("%Y")} at #{billion.strftime("%I:%M:%S %p")}."
end

def day_suffix day
	case day
		when "1", "21", "31"
			"st"
		when "2", "22"
			"nd"
		when "3", "23"
			"rd"
		else
			"th"
	end
end


one_billion_seconds(Time.gm(1972,03,03,05,35))