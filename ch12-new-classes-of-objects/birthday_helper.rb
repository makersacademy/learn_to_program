dir=Dir['/Users/Tom/Programming/PreCourse/WeekTwo/LRTHW_Clone/ch12-new-classes-of-objects']  	#Set directory of birthday data
dat={}																							#Initialize Hash of data
flag=true																						#Set flag
 
 
 File.open("birthdays.txt") do |f|													#Opens data file and for each
	f.each do |record|																#for each record 
		name, month, day, year = record.chomp.split(',')				#splits file lines based on | delimiter 
		
		birthday="#{day.strip}-#{month.upcase.strip}-#{year.strip}"		#Creates Birthday string
		dat[name]="#{birthday}"											#Adds name/birthday to hash

	end

while flag==true
puts "Please enter the name of the person whose, birthday you wish to know:"			#Gets name of person
input=gets.chomp

if dat.keys.include?(input)																#Checks for data on person 
	puts "#{input} was born on the #{dat[input]}"										#Returns birthday
	
	puts "Do you need any more help with birthdays? Y/N"								#Checks for continuation
	holder=gets.chomp
	flag = false if holder.upcase == "N"
	
else 
	puts "I'm sorry I don't have data for that person. Would you like to continue? Y/N"	#Error message with check for continuation. 
	holder=gets.chomp
	flag = false if holder.upcase == "N"
end

end

end
	