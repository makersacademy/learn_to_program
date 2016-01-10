def billion_birthday year, month, day, hour, minute, seconds = 0
  birth = Time.new(year, month, day, hour, minute, seconds)
  birth + (10**9)
end