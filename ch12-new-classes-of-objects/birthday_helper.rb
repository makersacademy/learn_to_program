puts 'Enter full name, incuding extension, of the file'
file_name = gets.chomp
#Dir.chdir(Dir.pwd) #do I need to change path? #TODO
bday_database = Hash.new

File.read(file_name.to_s).each_line do |line|
  line_arr = line.split(',')
  # Creating Hash
  bday_database[line_arr[0]] = line[-13, 12]
end

puts bday_database

#Retreiving birth day information
puts "Enter a name for birth date information. Name must be in the format 'FirstName LastName' and the first letter must of each must be capital"
request = gets.chomp
birth_date = bday_database[request].chomp
year      = birth_date[-4, 4]

cal_month = birth_date[-8, 2]

#if birth_date[4] != (1 || 0)
#  day = '0'+ birth_date[5]
#else
#  day = birth_date[4..5]
#end

#month = Hash.new
#month['Jan'] = '01'
#month['Feb'] = '02'
#month['Mar'] = '03'
#month['Apr'] = '04'
#month['May'] = '05'
#month['Jun'] = '06'
#month['Jul'] = '07'
#month['Aug'] = '08'
#month['Sep'] = '09'
#month['Oct'] = '10'
#month['Nov'] = '11'
#month['Dec'] = '12'x

#age_is = (Time.new - Time.new(year.to_i,month[cal_month].to_i,day.to_i)).to_i / (60*60*24*365)

#next_birthday_year = Time.now.year.to_i

#next_birthday_year += 1 if  Time.now.month.to_i > month[cal_month].to_i

#puts "#{request} next birthday will be #{day} #{cal_month} #{next_birthday_year}.
      #{request} is #{age_is} years old. Date of birth is #{birth_date}. "

puts birth_date[0..5]
