def birthday
	birth_dates = Hash.new
  
  File.read('Birthday_helper.txt').each_line do |line|
    line = line.chomp
    
    first_comma = 0
    while line[first_comma] != ',' &&
      first_comma < line.length
      first_comma = first_comma + 1
	  end
    name = line[0..(first_comma - 1)]
    date = line[-12..-1]  
    birth_dates[name] = date
  end
  
  puts "Type the name of the person you want to know his/her birthday!"
	name = gets.chomp

  date = birth_dates[name]
  if date == nil
    puts "Try again.. The name is incorrect!"
  else
    puts date[0..-1]
  end
	
end

birthday()