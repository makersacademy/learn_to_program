
my_birthday = Time.local(1988,9,7,12,28,05)
time_now = Time.new
age_in_seconds = time_now - my_birthday
current_age = age_in_seconds/60/60/24/365
billion_second_birthday = my_birthday + 10**9