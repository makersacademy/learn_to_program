# your code here
puts 'Time class'
time_now = Time.new
#puts time_now
born_time = Time.local(1969, 7,3,10,30)
puts born_time
time_alive_seconds = time_now - born_time
puts time_alive_seconds
billion_secs_old  = born_time + 1000000000
puts' billion_secs_old: '+ billion_secs_old.to_s
if time_alive_seconds > 1000000000
 puts 'Man you are older than a billion seconds'
end
