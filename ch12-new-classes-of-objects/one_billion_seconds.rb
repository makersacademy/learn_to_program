=begin
One billion seconds... Find out the exact second you were born (if you can).
Figure out when you will turn (or perhaps when you did turn?) one billion seconds old.
Then go mark your calendar.
=end

#my date of birth
dob = Time.new(1961, 06, 16, 18, 30)

#Find out the exact second you were born.

puts "The exact second I was born was " + dob.to_i.to_s

#Figure out when you will turn (or perhaps when you did turn?) one billion seconds old.

# add a billion seconds
date_billion_seconds = dob + 1000000000

puts "I turned one billion seconmds old on date_billion_seconds " + (dob + 1_000_000_000).to_s