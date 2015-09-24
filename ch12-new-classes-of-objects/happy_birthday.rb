puts 'Please answer the following questions in number format only i.e. dd/mm/yyyy or 26/01/1985'

puts 'What year were you born?'
birth_year = gets.chomp.to_i

puts 'What month were you born in?'
birth_month = gets.chomp.to_i

puts 'What day of the month were you born on?'
birth_day = gets.chomp.to_i

birth = Time.local(birth_year , birth_month, birth_day)
time = Time.new

age = 1

while Time.local(birth_year + age , birth_month, birth_day) <= time
puts 'Spank'
age = age + 1

end

