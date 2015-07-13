# Program needs .txt input file. 

filename = 'birthdays.txt'
birth_dates = { }

File.open filename do |f|			#opens a file
	f.each_line do |entry|		
		date = entry[-13..-1]		#divides every line to dates and names.
		name = entry[0..-15] 
		birth_dates[name] = date
	end
end


puts 'Enter a name and their next birthday will be returned'
name = gets.chomp

date = birth_dates[name]	#slices the dates.
year = date[-5..-1].to_i
day = date[-9,2].to_i
# this sections swaps numeral months to its name.
month_string = date[-13,3]
if month_string == 'Jan'
	month = 1
elsif month_string == 'Feb'
	month = 2
elsif month_string == 'Mar'
	month = 3
elsif month_string == 'Apr'
	month = 4
elsif month_string == 'May'
	month = 5
elsif month_string == 'Jun'
	month = 6
elsif month_string == 'Jul'
	month = 7
elsif month_string == 'Aug'
	month = 8
elsif month_string == 'Sep'
	month = 9
elsif month_string == 'Oct'
	month = 10
elsif month_string == 'Nov'
	month = 11
elsif month_string == 'Dec'
	month = 12 
end 

today = Time.new #current time

birthdate = Time.mktime(year,month,day)	#
birthday = Time.mktime(2008,month,day)

if birthday < today
	next_birthday = Time.mktime(2009,month,day)
	age = (next_birthday - birthdate)/(60*60*24*365)
	age = age.to_i
	puts name + '\'s next birthday will be ' + next_birthday.to_s
	puts 'and they will be ' + age.to_s + ' years old'
else
	age = (birthday - birthdate)/(60*60*24*365)
	age = age.to_i
	puts name + '\'s next birthday will be ' + birthday.to_s
	puts 'and they will be ' + age.to_s + ' years old'
end