# y2k = Time.mktime(2000, 1, 1) 

birth_time = Time.mktime(1984, 2, 23, 10, 0, 4) 

# number of seconds after 1/1/1970 I was born
birth_seconds = birth_time.to_i
billion_seconds_old = birth_seconds + 1000000000
time_billion_seconds_old = Time.at(billion_seconds_old)

  
puts "I was born at #{birth_time} #{birth_time.zone}. I will be a billion seconds old at #{time_billion_seconds_old} #{time_billion_seconds_old.zone}"