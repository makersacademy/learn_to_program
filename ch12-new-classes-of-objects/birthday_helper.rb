# Have used a local file for this example. Not sure how to broaden

Dir.chdir '/Users/DuskyShelf/projects/learn_to_program/ch12-new-classes-of-objects'

contents = File.read('birthday_list.txt')

hashed_birthdays = {}

contents.each_line do |i|
  separator = i.index(',')
  name = i[0, (separator)]
  birthday = i[((separator + 2) - i.length) .. - 1]
hashed_birthdays[name] = birthday
end

puts "Whose birthday do you want to know?"
name = gets.chomp

puts hashed_birthdays[name]