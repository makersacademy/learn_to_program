# your code here
require 'yaml'
puts "Please enter a persons name I will output there birthday if stored"
name = gets.chomp
#puts 'Please enter the name of your birthday list'
# array_methods and string methods are interchangeable for some such as array_name[] and string[]
  filename = 'birthdayfile.txt'
  birthdays = Hash.new
  yaml_string = File.read filename
  yaml_arr = YAML::load yaml_string
  #tConverts read string into an array
  yaml_string.each_line do |line| # each line is a string
    first_comma = 0  
    line = line.chomp
    while (line[first_comma] !=',' &&  first_comma < line.length)
      first_comma = first_comma + 1
      
    end
        persons_name = line[0..first_comma -1] 
       date = line[first_comma +1.. line.length]
       birthdays[persons_name] = date
  end
 if birthdays[name] == nil 
   puts "Sorry no name found"
 else
   puts birthdays[name] 
 end