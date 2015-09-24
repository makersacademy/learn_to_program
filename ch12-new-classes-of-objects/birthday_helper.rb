#f = File.new(__dir__ + '/birthday_list.txt')
#arr = f.map { |line| line.scan(/^([\w\s]+),\s(.{3}\s\d+,\s\d{4})$/) }.flatten
#DOB_LIST = Hash[*arr]

DOB = Hash.new
# easier to read than my first attempt with a regex
File.readlines(__dir__ + '/birthday_list.txt').each do |line|
  name, date, year = line.split(',')
  DOB[name] = "#{date}, #{year}"
end

def question
  puts
  puts "Type a name to see this person's birthday: "
  DOB.each { |name, _| puts "  - #{name}" }
  puts
  input
  
end

def input
  print "> "
  answer = $stdin.gets.chomp
  
  case answer
  when 'quit'
    exit(0)
  when 'list'
    question
  else
    response(answer)
  end
end

def response(answer)
  if DOB.key?(answer)
    puts DOB[answer]
    puts "That was fun. Try another name."
    puts "Type 'list' for the list of names or 'quit' to exit."
    input
  else
    puts "Sorry, that name is not in the list."
    puts "Type 'list' for the list of names or 'quit' to exit."
    input
  end
  
  print "> " 
  answer = gets.chomp
end

question

