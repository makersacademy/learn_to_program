
def one_billion_seconds(year,month, day)

birthday = Time.mktime(year, month, day)
present = Time.new

timeToBillion = (birthday + 10**9)-present
puts timeToBillion

end


puts 'Enter your birthyear: '
year = gets.chomp

puts 'Enter your birthmonth: '
month = gets.chomp
puts 'Enter your birthday: '
day = gets.chomp
one_billion_seconds(year,month,day)
