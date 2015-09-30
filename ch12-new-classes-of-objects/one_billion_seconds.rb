def billionth_second(time)
  puts time + 10**9
end

birthday = Time.local(1990, 5, 29, 19)
billionth_second(birthday)
