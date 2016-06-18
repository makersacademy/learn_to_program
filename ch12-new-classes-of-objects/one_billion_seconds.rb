# List the exact second you were born

# Ruby uses epoch (first second on 1 Jan 1970) as the date that time began. When converting time to an integer it will be the number of seconds from epoch

# Work out how many seconds between today and 29 June 1986

# Then work out how many more seconds until I am 1000000000 seconds old

dob = Time.local(1986, 6, 29, 05, 26, 15)
current_time_secs = Time.new
secs_since_epoch = dob.to_i

puts "As time began at Epoch (1 Jan 1970) my birthdate (#{dob}) was #{secs_since_epoch} seconds after epoch"

seconds_old = current_time_secs - dob
seconds_old_date = seconds_old / ((8760 * 60) * 60)

puts "I am currently #{seconds_old} seconds old"
puts "I am currently #{seconds_old_date} years old"

# How many secdonds between 1000000000 and current seconds age?

billion_secs = 1000000000 - seconds_old
billion_secs_date = current_time_secs + billion_secs

puts "I will be one billion seconds old on #{billion_secs_date}"
