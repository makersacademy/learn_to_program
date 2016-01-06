def happy_birthday
  puts "when were you born in YYYYMMDD format?"
  born = gets.chomp
  year = born[0..3].to_i
  month = born[4..5].to_i
  day = born[6..7].to_i

  time = Time.new

  current_year = time.year
  current_month = time.month
  current_day = time.day

  age = current_year - year

  if current_month < month || (month == current_month && current_day < day)
    age -= 1
  end
  age.times do puts "SPANK"
  end
end
