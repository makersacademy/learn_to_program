def one_bil_sec

  puts birthday = Time.local(1984, 7, 20, 12, 0, 0)
  puts billion = 10 ** 9
  
  onebil_bday = birthday + billion
  time_now = Time.new

  if onebil_bday < time_now
  	puts "You are one billion seconds old last #{onebil_bday.strftime("%-d %B %Y")}!"
  else
	puts "You will be one billion seconds old on #{onebil_bday.strftime("%-d %B %Y")}! Mark your calendar!"
  end

end

one_bil_sec

