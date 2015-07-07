birth = Time.local(1980, 10, 9, 6, 50)
current = Time.now
seconds_old = (current - birth)
billion = 10**9
#years_old =  seconds_old /  31557600 
bill_diff = seconds_old - billion
billion_date = current - bill_diff
puts billion_date 

