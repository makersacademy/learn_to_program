def happy_birthday birthYear, birthMonth, birthDay

oneYear = (Time.mktime(2000-01-01)) - (Time.mktime(1999-01-01))
calcBday = Time.new - (Time.mktime(birthYear, birthMonth, birthDay))
totalBdays = calcBday/oneYear


puts 'no of birthdays: ' + totalBdays.to_s
puts 'I will give you ' +totalBdays.to_i.to_s + ' spanks for that!'
puts

while totalBdays.to_i > 0
    puts 'SPANK!'
    totalBdays = totalBdays-1

    end
end



#terminal

puts 'Enter your birthyear: '
year = gets.chomp

puts 'Enter your birthmonth: '
month = gets.chomp
puts 'Enter your birthday: '
day = gets.chomp

puts happy_birthday(year.to_i, month.to_i, day.to_i)
