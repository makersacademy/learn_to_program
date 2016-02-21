# my birthday 1989-10-20 16:15:32 +01:00
# 1 billion = 1000000000 (1 Milliarde)

# find age in seconds
# time now - birthday => age in seconds I'm old now

# Figure out when you will turn (or perhaps when you did turn) one billion seconds old
# 1b secs - age in seconds => seconds left until I turn 1b secs

require 'Time'

date_1bill_secs_old = Time.local(1989,10,20,16,15,32) + 1000000000
puts "On the #{date_1bill_secs_old} I will be 1 billion seconds old."
