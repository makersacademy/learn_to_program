#make yaml work
require 'yaml'

# change working directory
Dir.chdir 'C:/DATA/VMSHARE/projects/read_file/'

# pont to file
file_name = "birthdays.txt"

# load file data
file_data = File.read file_name

# set date
today = Date.today

# read file and pass each line to a Hash,
# making 2 strings by spliting at the first comma
birthdays_hash = {}
File.open(file_name) do |f|
  f.each do |line|
    key, value = line.chomp.split(",",2)
    birthdays_hash[key] = value
  end
end

puts "please type name"
input_name = gets.chomp 

date_of_birth = Date.parse(birthdays_hash[input_name])
age = ((today - date_of_birth).to_i)/365

puts " #{input_name} was born on #{date_of_birth} \n they are #{age} years old "

if date_of_birth.month > today.month
	puts " thier next birthday will be #{today.year}-#{date_of_birth.month}-#{date_of_birth.day}"
elsif date_of_birth.month < today.month
	puts " thier next birthday will be #{today.year + 1}-#{date_of_birth.month}-#{date_of_birth.day}"
elsif date_of_birth.month == today.month
	if date_of_birth.day > today.day
		puts " thier next birthday will be #{today.year}-#{date_of_birth.month}-#{date_of_birth.day}"
	elsif date_of_birth.day < today.day
		puts " thier next birthday will be #{today.year + 1}-#{date_of_birth.month}-#{date_of_birth.day}"
	else
		puts "Happy Birthday!!"
	end
end
