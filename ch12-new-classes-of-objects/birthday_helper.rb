def birthday_helper
  require 'date'
  filename = './birthdayinput.txt'
  read_string = File.read filename

  bday_data = {}
  
  read_string.each_line do |line|
    name = line.split("\t")[0].delete(",")    #assuming tab-delimited input text file
    bday_str = line.chomp.split("\t")[1]      #assuming tab-delimited input text file
    bday_data[name] = Date.parse(bday_str)
  end

  puts "Enter name of person to check his/her next birthday:"
  name = gets.chomp

  bday = bday_data[name]

  if bday == nil
    puts "Person not in #{filename}, quitting..."
  else
    next_bday = Date.new(Date.today.year, bday.month, bday.day)
    next_bday = next_bday.next_year if next_bday < Date.today
    puts "#{name}'s next birthday is on #{next_bday.strftime("%B %-d, %Y")}."
  end
end

birthday_helper
