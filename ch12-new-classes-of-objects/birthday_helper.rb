birthdays = {}

 File.open('bday.txt').each_line do |line|
 name, date, year = line.split", "
 birthdays[name] = Time.gm(year,*(date.split' '))
 end

 puts "Please enter a name"
 name = gets.chomp

 if birthdays[name] == nil
   puts "Sorry, no one has this name in our records"
   exit
 end

 now = Time.new
 birthday = birthdays[name]

 if (now.month < birthday.month) || (now.month == birthday.month && now.day < birthday.day)
   next_bday_year = now.year
  age = now.year - birthday.year
elsif (now.month == birthday.month) && (now.day == birthday.day)
   puts "#{name} has her/his bday today!"
   exit
 else
   next_bday_year = today.year + 1
   age = today.year - birthday.year + 1
 end

 puts "#{name} will be #{age} on #{birthday.day} #{birthday.month} #{next_bday_year}"
