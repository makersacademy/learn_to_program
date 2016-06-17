# your code here
# My date and time of birth is 11th July 1984, 19:30:30

birth_time = Time.gm(1984,07,11,19,30,30)

billion_secs_old = birth_time + (10**9)

puts billion_secs_old
