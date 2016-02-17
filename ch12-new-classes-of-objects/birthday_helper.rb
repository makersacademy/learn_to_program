def parse_line line   #parse a line and return a hash value
   
  parse_array = line.split(',')
  parse_array[1] = Time.new(*parse_array[1].strip.split(' '))
  [parse_array].to_h
  
end


def reader filename     #reads a file
  parsed_values = Hash.new
  text = File.open filename

  text.each_line {|line| parsed_values.update(parse_line(line))}
  parsed_values

end

def create_info_string(name, birthday_hash)
  output_string = String.new
  birth = [birthday_hash[name].year,birthday_hash[name].month,birthday_hash[name].day]
  now = [Time.now.year,Time.now.month,Time.now.day]
  
  if now[1] > birth[1] || ( now[1] == birth[1] && now[2] >= birth[2] )
    age = now[0] - birth[0]
    next_birth = Time.new(now[0]+1, birth[1], birth[2])
  else
    age = now[0] - birth[0] - 1
    next_birth = Time.new(now[0], birth[1], birth[2])
  end
  
  output_string << "\t#{name} was born on #{birthday_hash[name].to_s.split[0]}\n"
  output_string << "\tHe is #{age} years old\n"
  output_string << "\tHis next birthday will be on #{next_birth.to_s.split[0]}"
end


def user_prompt       #user interface. no error checking

    puts "Hello, please tell me which file to read"
    birthdays = reader gets.chomp
    puts "File read. #{birthdays.size} dates of birth loaded."
    
    while true
      puts "Write 'namelist' to display a list of people, 'quit' to exit or the name of the person that interest you"
      if ( user_choice = gets.chomp ) == 'namelist'
        puts birthdays.keys
        user_choice = gets.chomp
      elsif user_choice == 'quit'
        puts "Goodbey"
        exit(0)
      end
      puts create_info_string(user_choice,birthdays)
    end

end

user_prompt