birthDate = {}
File.readlines('birthdates.txt').each do |line|
    name, date, year = line.split(',')
    birthDate[name] = Time.gm(year, *(date.split))
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
bday = birthDate[name]

if bday = nil
    
    puts 'We dont have records on this one'
    else
    current = Time.new
    age = current.year - bday.year
    if current.month > bday.month || (current.month == bday.month && current.day > bday.day)
        age += 1
    end
    if current.month == bday.month && current.day == bday.day
        puts "#{name} turns #{age} today."
        else
        date = bday.strftime "%b %d"
        puts "#{name} will be #{age} on #{date}."
    end
end
