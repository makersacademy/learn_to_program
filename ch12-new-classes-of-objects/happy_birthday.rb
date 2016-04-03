# Happy birthday! Ask what year a person was born in, then the month,
# and then the day. Figure out how old they are, and give them a big SPANK!
# for each birthday they have had.

puts 'What year were you born in?'
year = gets.chomp.to_i

puts 'What number month were you born in?'
month = gets.chomp.to_i

puts 'What day were you born on?'
day = gets.chomp.to_i

birthday = Time.local("#{year+1}, #{month}, #{day}, 0, 0")
time = Time.now

while birthday <= time
  puts 'SPANK!'
  birthday = Time.local("#{year+=1}, #{month}, #{day}")
end
