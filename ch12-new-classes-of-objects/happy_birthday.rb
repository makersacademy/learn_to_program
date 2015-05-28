puts"What year were you born?"
year=gets.chomp.to_i

puts "What month were you born?"
month=gets.chomp.to_i


puts"What day were you born?"
day=gets.chomp.to_i

puts"#{year}, #{month},#{day}"

birth=Time.local(year,month,day)
now=Time.new

age=1

while Time.local(year+age,month,day)<=now
  puts "SPANK"
  age+=1
end
