def how_old
  dob = Time.local(1988, 7, 7, 8, 30)

  time_now = Time.new

  print ageInSeconds = time_now - dob

end

how_old