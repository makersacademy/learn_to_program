puts 'Hello, please enter the year you were born'
birthyear = gets.chomp
puts 'Hello, please enter the month you were born'
birthmonth = gets.chomp 
puts 'What date of the month were you born on?'
birthdate = gets.chomp
time1=Time.mktime(birthyear,birthmonth,birthdate)
time2 = Time.new

myage = time2 - time1
puts 'Today you are '+myage.to_s+' seconds old'
secondsperyear = 60*60*24*365 
secondsperday = 60*60*24
yearsold = myage / secondsperyear
yearsold = yearsold.to_i
daysold = (myage % secondsperyear) / secondsperday
daysold = daysold.to_i
puts 'That makes you '+yearsold.to_s +
' years and ' + daysold.to_s +
' days old'
count = 0
while   count < yearsold do 
	puts 'SPANK'
	count+=1
end

