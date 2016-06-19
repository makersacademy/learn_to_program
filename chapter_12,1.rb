# billion seconds
def year_to_seconds (num)
	num*12*30*24*60*60
end
def seconds_to_years (num)
	num/60/60/24/30/12
end 
def when_x_seconds_old(num)
	puts(Time.gm(1995, 01, 19) + num)
end 


puts when_x_seconds_old(10**9)
