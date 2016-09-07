def find_birthday(dates_of_birth, name)
  birthday = dates_of_birth[name]

  if birthday == nil
    puts "Sorry, I don't know #{name}'s birthday."
  else
    today = Time.new
    age = today.year - birthday.year

    if (birthday.month < today.month) || (birthday.month == today.month) && (birthday.day < today.day)
      age += 1
    end

    if (birthday.month == today.month) && (birthday.day == today.day)
      puts "Today is #{name} birthday!!!"
    else
      date = birthday.strftime('%b %d')
      puts "#{name} will be #{age} on #{date}!"
    end
  end
end

puts "Please enter the path to your file:"
file = gets.chomp

dates_of_birth = File.readlines(file).reduce({}) do |memo, line|
  name, date, year = line.split(',')
  memo[name] = Time.gm(year, *(date.split))
  memo
end

puts "Please enter a name:"
name = gets.chomp

puts find_birthday(dates_of_birth, name)
