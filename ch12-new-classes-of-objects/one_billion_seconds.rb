time = Time.new
bday = Time.gm(1993, 02, 22, 02, 20, 22)
seconds_old = time - bday
time_left = 1000000000 - seconds_old
puts time+time_left
