puts "Please enter your date of birth. \n Year:"
year = gets.chomp
puts "Month:"
month = gets.chomp
puts "Day:"
day = gets.chomp

birth_date = Time.local(year, month, day)
now = Time.new
if now.month < birth_date.month
  diff = now.year - birth_date.year
elsif now.month > birth_date.month
  diff = now.year - (birth_date.year + 1)
else
  if now.day <= birth_date.day
    diff = now.year - birth_date.year
  else
    diff = now.year - (birth_date.year + 1)
  end
end
puts "SPANK!\n"*diff
