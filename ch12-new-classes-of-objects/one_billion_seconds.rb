# I shall assume that I was born at time 7:07 am (and 07 seconds)

birth_time = Time.local(1983, 7, 17, 7, 7, 7)
one_bill_secs_old = birth_time + 1_000_000_000

puts one_bill_secs_old 