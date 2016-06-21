require 'date'

puts "What is the name?"
@searched_name = gets.chomp

file = File.open("birthdays.txt").readlines.each do |line|
  name = line.split(',')[0]
  dob = line.split(',')[1]
  yob = line.split(',')[2].chomp

month_string = dob.split(' ')[0]
day = dob.split(' ')[1].to_i

month_int = []
if month_string == "Dec"
  month_int << 12
elsif
  month_string == "Nov"
  month_int << 11
elsif
  month_string == "Oct"
  month_int << 10
elsif
  month_string == "Sep"
  month_int << 9
elsif
  month_string == "Aug"
  month_int << 8
elsif
  month_string == "Jul"
  month_int << 7
elsif
  month_string == "Jun"
  month_int << 6
elsif
  month_string == "May"
  month_int << 5
elsif
  month_string == "Apr"
  month_int << 4
elsif
  month_string == "Mar"
  month_int << 3
elsif
  month_string == "Feb"
  month_int << 2
elsif
  month_string == "Jan"
  month_int << 1
end

birthdate = "#{yob}-#{month_int}-#{day}"
age = Date.today - birthdate.to_i
  if @searched_name == name
  puts birthdate.to_i
  puts Date.today
  puts age
end
end
