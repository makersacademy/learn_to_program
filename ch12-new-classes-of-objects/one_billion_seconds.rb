birthday = Time.local(1986, 8, 4, 11, 35)
time_now = Time.new
age_in_secs = time_now - birthday
puts age_in_secs.to_i

turning_billion = 1000000000 - age_in_secs.to_i
on_this_date = turning_billion + Time.new.to_i
here =  Time.at(on_this_date)
puts here# your code here