require 'date'
require 'time'

birth = Time.gm(1984,10,25,5)

birth_year = birth.year
birth_month = birth.month

def leap_year_months(year)

	if Date.leap?(year)
		month_arr = [31,29,31,30,31,30,31,31,30,31,30,31] 
	else
		month_arr = [31,28,31,30,31,30,31,31,30,31,30,31]
	end
end

birth_month_arr = leap_year_months(birth_year)

def month_total_days(birth_month, month_arr)

	while birth_month - 1 < month_arr.count 
	# need to count less than the actual month as we add the actual days on with birth.day
		month_arr.pop
		month_total_days(birth_month, month_arr) 
	end

	month_arr.inject(0){|sum,x| sum + x }
end

total_days = (birth.year * 365) + month_total_days(birth_month, birth_month_arr) + birth.day
# here's the calculation:
second_born = total_days * 86400 + birth.hour * 3600 + birth.min * 60 + birth.sec

puts "I was born at this second in time:"
puts second_born


###### figure out when i'll turn a billion

billion_total = second_born + 10**9
billion_year = (billion_total / 86400) / 365 # => 2016
billion_days = (billion_total / 86400) % 365 # => 193

def which_month(billion_days, month_array, shift = [])

	@shift = shift
	sum = shift.inject(0) {|sum,x| sum + x}

	unless sum > billion_days
		shift << month_array.shift
		which_month(billion_days, month_array, shift)
	end
end

billion_month_arr = leap_year_months(billion_year)
which_month(billion_days, billion_month_arr)

billion_days_total = (@shift.inject(0) {|sum,x| sum + x}) - billion_days

if (@shift.inject(0) {|sum,x| sum + x}) - billion_days == 0
	billion_month = @shift.count
else
	@shift.pop
	billion_month = @shift.count
end

billion_date = Time.gm(billion_year,billion_month,billion_days_total)

if billion_date < Time.now
	puts "I will have been a billion seconds old on: #{billion_date}"
else
	puts "I will be a billion seconds old on: #{billion_date}"
end
