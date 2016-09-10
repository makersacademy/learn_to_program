#The first step is inputting the files and creating the hash by splitting each line into an array.
def file_inputter
  @birth_dates = {}

  Dir.chdir "/Users/michael/Dropbox/makers/pre_week2/learn_to_program/ch12-new-classes-of-objects"

  input_file = File.new("./birthdates_file.txt","r")

  input_file.each_line do |line|
    line = line.split(',')
    line[1].slice!(0) #remove space before date starts...
    @birth_dates[line[0]] = line[1] + line[2].chomp
  end
end

#This is like the initialize program for taking the user input for the name they are searching for.
def program_run
  puts "Which famous persons birthday do you want to know?"
  famous_person = gets.chomp
  if @birth_dates[famous_person] == nil
    puts "I don't know them... sorry!"
    exit
  end
  birthday = @birth_dates[famous_person]
  birthday_converter(birthday[2], birthday[0], birthday[1], famous_person) #calling method "birthday_converter" with the required data
end

#This step converts the month number into a word, as well as calculating how old the person is. It then presents the info.
def birthday_converter(year, month, day, famous_person)
  birthday = Time.new(year.to_i, month, day.to_i)
  age = ((Time.now - birthday) / 60 / 60 / 24 / 365).round
  puts "#{famous_person}'s birthday is #{day} #{month.capitalize} #{year}."
  puts "#{famous_person} is #{age} years old."
end

file_inputter
program_run
