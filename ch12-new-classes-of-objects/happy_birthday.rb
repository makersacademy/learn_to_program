def birthday(yr,mth,d)
	now = Time.now
	age = now.year - yr
	if (mth > now.month)
		if (d > now.day)
			then age = age-1
		end
	end
	return age
	
	
end
