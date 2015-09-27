# TODO - add a function which calculates the age of the person.
#      - case insensitivity.
#      - remove whitespace on single digit day-of-month.

def convert_data_file_to_hash
  birth_dates = {}
  file = File.open("birthday_data.txt", "r") do |file| 
  file.each_line do |line|
    selected = (line.split(',',2))
    selected[1] = (selected[1].to_s).strip
    selected.each do |item|
      birth_dates[selected[0]] = selected[1]
      end     
    end
  end
  return birth_dates
end
  
def find_birthday name, birth_dates
  birth_dates.each_key do |key|
    if key == name
     return birth_dates.values_at(name)
     break 
    end
  end
  return 'Name not found'
end

def next_birthday_and_how_old name, birthday 
  short_birthday = (birthday.match('[a-zA-Z](.*),').to_s.chop)
  return "#{name}\'s next birthday is on #{short_birthday}."
end

birth_dates = convert_data_file_to_hash
puts 'Name to search for: '
print '> '
name = gets.chomp
birthday = (find_birthday(name, birth_dates)).to_s
puts next_birthday_and_how_old(name,birthday)