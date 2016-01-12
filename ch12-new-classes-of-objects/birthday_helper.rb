
birth_dates = {}

text = File.read 'birth_date.txt' #file to read 

#for each line in text I will use chomp method to remove the new line from the end of the string. 
#After that split each line creating a new array containing name, date and year.
text.each_line { |line|
	line = line.chomp
	array = line.split(',') #sample line = 'Cristopher Alexander, Oct 4, 1936'
	#now parse the line, which means being able to get name and date
	name = array[0].strip
	date = array[1].strip
	#add into the hash
	birth_dates[name] = date
}

#ask the question
puts 'What name do you want the birthday for?'

#get the answer
answer = gets.chomp

#look up the date from the name in input
date = birth_dates[answer] 

#if date != nil, print it, otherwise print error
if date != nil
	puts date
else
	puts 'This name does not exist!'
end 



