puts "What year were you born?"
year = gets.chomp

puts "What month were you born (put 1 for januaray, 2 for february etc.)?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

correct_date = nil
until ["yes", "no"].include? correct_date do
  puts "So you were born on #{day}/#{month}/#{year}? Please answer 'yes' or 'no'."
  correct_date = gets.chomp
end

if correct_date == "yes"
  puts
else
  exit
end

def age(b, n)
  age = n.year - b.year
  age -= 1 if b.month > n.month || (b.month >= n.month && b.day > n.day)
  puts "You are #{age} years old!"
  puts "SPANK!\n" * age
end

birth = Time.local(year, month, day)
now = Time.new

puts age(birth, now)
