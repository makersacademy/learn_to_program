def happy_birthday
  puts "What year were you born in?"
  year = gets.chomp
  puts "What month?"
  month = gets.chomp.downcase
  puts "And what day?"
  day = gets.chomp
#assuming the month response is the name of the month, not the number.
  months = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']
  months.each { |x|
    if x == month
      month = months.index(x) + 1
    end
  }

  year = year.to_i
  birthday = Time.new(year, month, day)
  age = (Time.now - birthday) / 60 / 60 / 24 / 365
  bdays = age.to_i
  if bdays > 0
    return "SPANK!" + " SPANK!"*(bdays-1)
  end
end
