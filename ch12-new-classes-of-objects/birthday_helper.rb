def birthday_helper names_in_file
  names = File.read names_in_file
  names = names.split "\n"
  names = names.map { |x|
    x.split ","
    }
#now put the names into a hash
  name_hash = {}
  names.each { |x|
  x.each_index { |y|
    if y == 0
      name_hash[x[y]] = x[y+1] << x[y+2]
    end
    }
  }
#want each date to be split into 3 parts - year, month and day
  puts "Whose birthday do you want to know?"
  person = gets.chomp
  bday = name_hash[person].split " "
  months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  month = months.index(bday[0]) + 1
  if Time.now > Time.new(2016, month, bday[1].to_i)
    puts "#{person}'s next birthday is on #{bday[0]} #{bday[1]}, 2017."
  else
    puts "#{person}'s next birthday is on #{bday[0]} #{bday[1]}, 2016."
  end
  birth = Time.new(bday[2].to_i, month, bday[1].to_i)
  age = (Time.now - birth)/60/60/24/365
  puts "They will be #{age.to_i + 1} years old."
end