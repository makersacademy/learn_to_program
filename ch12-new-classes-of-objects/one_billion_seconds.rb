# One billion seconds! Find out the exact second you were born (if you can). 
# Figure out when you will turn (or perhaps when you did turn) one billion seconds old. Then go mark your calendar.

time_of_birth = Time.new(1983, 07, 05, 10, 33, 0, "+02:00")

# How many seconds was that since the Unix Epoch?
# time_of_birth.to_i ==> 426241980 seconds since the Unix Epoch

one_billion_seconds_old = time_of_birth + 1000000000
puts "I turned one billion seconds old on #{one_billion_seconds_old}! OMG!!!"