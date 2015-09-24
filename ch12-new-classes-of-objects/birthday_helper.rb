f = File.new(__dir__ + '/birthday_list.txt')
arr = f.map { |line| line.scan(/^([\w\s]+),\s(.{3}\s\d+,\s\d{4})$/) }.flatten
DOB_LIST = Hash[*arr]

def question
  puts
  puts "Welcome to my special birthday calendar. Please type in the person's name"
  puts "whose date of birth you want ('quit' to exit the program): "
  DOB_LIST.each { |name, _| puts "  - #{name}" }
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
  if DOB_LIST.key?(answer)
    puts DOB_LIST[answer]
    puts "That was fun. Type another name. Type 'list' for the list of names or 'quit' to exit."
    input
  else
    puts "Sorry, that name is not in the list. Make sure you have typed in the correct name"
    puts "Type 'list' for the list of names or 'quit' to exit."
    input
  end
  
  print "> " 
  answer = gets.chomp
end

question

