require 'date'
# find the exact second you were born.

# set starting time to 0 - epoch
starting_time = Time.at(0)
puts starting_time
# set finishing time to my birthday
birthday = Time.mktime(1982, 12, 6, 22, 0)
puts birthday
# find difference
seconds = birthday - starting_time
puts "I was born #{seconds} seconds after the epoch."

# find out when you will turn 1 billion seconds old.
one_billion_secs = birthday + 1000000000
puts "By #{one_billion_secs}, I will be 1 billion seconds old."