require 'date'

def get_birthday_info(date)

 now = Time.now

 had_birthday = now.yday >= date.yday
 next_birthday = Time.new(now.year + (had_birthday ? 1 : 0), date.month, date.day)
 age = now.year - date.year - (had_birthday ? 0 : 1)
 result = [next_birthday,age]
 result

end




hash = Hash.new

filename = '/Users/peteburch/Projects/learn_to_program/ch12-new-classes-of-objects/birthdays'
ary = File.readlines (filename)
ary.map! {|line| line.chomp.split.join(" ").split(/\s*,\s*/)}
 ary.each {|person| hash[person[0].downcase] = Date.parse(person[1..2].join(" ")) }

puts "Enter person's name"
name = gets.chomp

#name = 'Christopher Lloyd'
if hash.member?(name.downcase)

 result =  get_birthday_info(hash[name.downcase])
 puts "#{name}'s next birthday is on #{result[0].strftime('%B %e %Y')}. He is currently #{result[1]}."
else
  puts "#{name} is not in our records"
end

