age_in_seconds = Time.now - Time.local(1992, 12, 4, 1, 32)

puts "You are #{age_in_seconds} seconds old!"

billion_old = Time.local(1992, 12, 4, 1, 32) + 10**9

puts "You will be a billion seconds old on #{billion_old}"
