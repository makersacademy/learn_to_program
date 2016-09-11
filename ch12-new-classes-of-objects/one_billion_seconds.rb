my_seconds = Time.new - Time.mktime(1994, 05, 30)
one_billion = 1_000_000_000 - my_seconds
date = Time.new + one_billion

puts date
