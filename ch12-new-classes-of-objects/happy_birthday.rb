# your code here

year = ''
loop do
  puts 'What year were you born?' 
  year = gets.chomp.to_i  
  if year > 1900
    break 
  else
    puts "C'mon, you can't be that old..."
    puts 'What year were you born?'
    year = gets.chomp.to_i
  end
end

month = ''
loop do
  puts 'What month were you born?' 
  month = gets.chomp.to_i  
  if month > 0 && month <= 12
    break 
  else
    puts "C'mon, you can't use negative numbers or those over 12 for months..."
    puts 'What month were you born?'
    month = gets.chomp.to_i
  end
end

day = ''
loop do
  puts 'What day of the month were you born?' 
  day = gets.chomp.to_i  
  if day > 0 && day <= 31
    break 
  else
    puts "Bro, you can't use negative numbers or those over 31 for days of the month..."
    puts 'What day of the month were you born?'
    day = gets.chomp.to_i
  end
end

time_now = Time.new
age = 1
while Time.local(year + age, month, day) <= time_now 
  puts 'SPANK!'
  age += 1
end