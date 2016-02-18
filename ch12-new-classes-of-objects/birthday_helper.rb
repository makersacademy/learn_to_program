def get_birthday search
  filename = 'birthday.txt'
  Dir.chdir("/Users/tobennna/Projects/learn_to_program/ch12-new-classes-of-objects/")
  read_string = File.read filename
  people = {}
  read_string.each_line do |person|
    name = person.split(',')[0]
    dob =  person.gsub(name + ',', '').strip.delete(',').split(' ')
    dob = Time.new(dob[2], dob[0], dob[1])
    people[name] = dob
  end
  people[search].strftime("Birthday is on %b %-d")
end

puts get_birthday("Christopher Alexander")
