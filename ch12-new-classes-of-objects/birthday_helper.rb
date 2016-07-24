def birtdate(name)
  filename = 'birthdate_input.txt'; birth_dates = Hash.new #store name and birthdate
  File.open filename, 'r' do |f| #open the input File
    f.each_line do |line| #read all lines from file
      line_a = line.split(",") #line is splitted at colons
      #elem at position 1 needs to be splitted to day and month
      line_a.push(line_a[1].split[0], line_a[1].split[1]); line_a.delete_at(1)
      birth_name = line_a[0].downcase
      birthdate = Time.new(line_a[1].to_i, line_a[2], line_a[3].to_i)
      birth_dates[birth_name] = birthdate #name and birthdate are added to the hash
    end
  end
  birth_dates[name]
end

loop do
  print "Please add a name to check (exit to quit): "
  name_to_check = gets.chomp #prompt user to add a name
  break if name_to_check == "exit" #if exit is written
  #birtdate received from the defined method
  b_day = birtdate(name_to_check.downcase)
  if b_day == nil then puts "#{name_to_check} not found! Try again."
  else
    puts "#{name_to_check}'s date of birth is #{b_day.day}-#{b_day.month}-" +
    "#{b_day.year} and he/she is #{Time.new.year - b_day.year} year(s) old."
    break
  end
end
