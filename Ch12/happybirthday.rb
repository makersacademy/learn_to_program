puts 'What year were you born? '
year = gets.chomp.to_i
puts 'What month were you born? (1-12)'
month = gets.chomp.to_i
puts 'What day were you born? (1-31)'
day = gets.chomp.to_i


now = Time.new
now = now.year

dob = Time.local(year, month, day)
dob = dob.year

puts dob
puts now
hit = now - dob

hit.times do
  puts 'SPANK'
end
