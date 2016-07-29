puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in? Enter a digit"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

# calculate number of whole years i.e. birhdays
birthdate = Time.local(year, month, day)
today = Time.new

# difference in years in completed years i.e. birthdays
n = today.year - birthdate.year
  if birthdate.month > today.month || (birthdate.month >= today.month && birthdate.day > today.day )
    n = n-1
  end

puts "You will be spanked #{n} times"
puts "SPANK! "*n
