###### figure out when i'll turn a billion

billion_seconds = 62593275600 + 10**9
billion_year = (billion_seconds / 86400) / 365 # => 2016
billion_days = (billion_seconds / 86400) % 365 # => 193


def which_month(billion_days, month_array, shift = [])

	@shift = shift 

	shift == [] ? sum = 0 : sum = shift.inject(0) {|sum,x| sum + x}

	while sum < billion_days
		shift << month_array.shift
		which_month(billion_days, month_array, shift)
	end

	#if sum - billion_days != 0
#		shift.pop
#	else 
#		shift
#	end
end

billion_month_arr = leap_year_months(billion_year)
which_month(billion_days, billion_month_arr, shift)

@shift

months.count

#billion_month = which_month()
#billion_days_total = 

#billion_date = Time.gm(billion_year,billion_month,billion_days_total,billion_hours,billion_minutes,billion_seconds)

#puts "You will be a billion seconds old in: #{billion_date}"





# >> 62593275600
# ~> -:58:in `which_month': undefined local variable or method `billion_month_arr_sum' for main:Object (NameError)
# ~> Did you mean?  billion_month_arr
# ~> 	from -:67:in `<main>'
# >> You were born at this second in time:
# >> 62593275600