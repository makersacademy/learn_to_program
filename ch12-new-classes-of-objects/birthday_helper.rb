def birthday_helper
  Dir.chdir '/home/william/Dropbox/WK-03/learn_to_program/ch12-new-classes-of-objects'

  birthdays = {}

  File.readlines('b_dates.txt').each do |line|
    name, date, year =  line.split(%r{,\s*})
    birthdays[name] = Time.utc(year, *(date.split))
  end

  puts "Name to be found: "
  name = gets.chomp
  birth_date = birthdays[name]

  puts "Next birthday is #{birth_date.month} #{birth_date.day}"

end


birthday_helper
