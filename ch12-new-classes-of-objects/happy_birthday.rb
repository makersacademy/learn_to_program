
def age(year, month, date)
  seconds = (60 * 60 * 24 * 7 * 52.1429)
  birthday = Time.gm(year, month, date)
  today = Time.now

  age = (today - birthday) / seconds
  return age

end

years = age(1980, 1, 6)
puts "you get #{years.floor} spankings!"


