month_hash = {
  "january" => 1,
  "february" => 2,
  "march" => 3,
  "april" => 4,
  "may" => 5,
  "june" => 6,
  "july" => 7,
  "august" => 8,
  "september" => 9,
  "october" => 10,
  "november" => 11,
  "december" => 12
}

puts "What year were you born in?"
year = gets.chomp.to_i

while true
  puts "What month were you born in"
  month = gets.chomp.downcase
  break if (1..12).include? month_hash[month]
end

puts "What day were you born on"
day = gets.chomp.to_i

def age born, time
  year_diff = time.year - born.year
  return (year_diff - 1) if (time.month < born.month)
  if time.month == born.month
    return (year_diff - 1) if (time.day < born.day)
  end
  year_diff
end

born = Time.new(year, month_hash[month], day)
time = Time.new
puts "You are #{age born, time} years old."

(age born, time).times do
  puts "SPANK!"
end