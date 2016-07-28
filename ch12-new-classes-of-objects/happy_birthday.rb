def happy_birthday

  puts "What year were you born in?"
  year = gets.chomp

  puts "What month were you born in?"
  month = gets.chomp

  puts "What day of the month were you born on?"
  day = gets.chomp

  if month.to_i > 1
    month = month.to_i
  end

  if month.to_i == 0
    months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
    month.downcase!
    month = months.index(month) + 1
  end

  dob = Time.local(year, month, day)

  age = ((Time.new - dob) / 60 / 60 / 24 / 365).to_i

  return "You are #{age} years old!"

end
