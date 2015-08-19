
require 'yaml'  #Is this needed? It seems to work without - Becuase we are working with strings on multiple lines
file = File.open("birthdays.txt")

contents = file.read  #read the file and save it as a variable called contents

lines_array = contents.split("\n"); #split contents on the end of the line \n 
p lines_array # I added this to show the new array
birthdays = {} # create a new array

#here we clean up the contents of the text file so we can manipulate it as a hash
lines_array.each do |l|  #iterate throught he  array
  date = l[-12..-1].to_s  # ok look at the array -- - 12 to -1 is the date bit - try changing it - it crashes - why?
  p date # I added this to show the dates
  man_date = date.split(', ') # splits the date string into an array with with month/day and yeer as seperate items in the array
  p man_date # and again
  year = man_date[1].to_i #year is the second item in the array - convert to integer
  p year # and again
  month = man_date[0][0..2]
  p month # and again month is first 3 characters in first array
 months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']
  #convert month string to month number for time calcs later
  months.each do |m| # here we are getting the month string and converting to the index- so + 1
    if m == month  #?????? I guess it alway is!!!! - no it takes the month from the lines_array and makes it the index for the months array
     month = months.index(m) + 1  # so Jan = months[0] + 1 cool 
  end
  #remove leading whitespace from date numbers
  day = man_date[0][4..5] # takes the date array and takes the 4 and 5 characters - 
  p day
  if day[0] == ' ' # if we have a _4 
    day = day[1].to_i #just take the first character
  else
    day = day[0..1].to_i #else take the while lot
  end
 
  
  nameline = l.split(date).to_s #cool - takes the line and takes ot the date so we are just left with the name - we do not know how long the name is
  name_array = nameline.split(',') #takes name bit and creates an array
  name = name_array[0] #errrrr first item in array 
  name = name[2..-1]
  
  birthdays[name] = [year, month, day] #creates a hash of birthdays and names
  p birthdays
  
end

puts "Who's birthday would you like to know?"
input_name = gets.chomp #gets the name
birthdays.each do |n,d| #goes through the hash of birthdays and dates
  if n == input_name #takes the name
   birthtime = Time.new(d[0].to_i,d[1].to_i,d[2].to_i) #creates a birthtime from the birthdate
   time = Time.new #lets call it time
   current_year = time.year #create this year
   test_date = Time.local(current_year,d[1].to_i,d[2].to_i) #this but checks to see if the birthday has occured I guess
   diff = test_date - Time.now
    if diff > 0 
      next_birthday_age = current_year - birthtime.year
      puts "#{n}'s next birthday is #{d[1]}/#{d[2]} #{time.year}. They will be #{next_birthday_age} years old."
    else
      next_birthday_age = 1 + current_year - birthtime.year
      puts "#{n}'s next birthday is #{d[1]}/#{d[2]} of #{time.year + 1}. They will be #{next_birthday_age} years old."

   end
else
	p "who is that?"
	exit
  end
end# your code here