def birthday_helper
birthdays = {}
  File.read('birthdays.txt').each_line do |line|
    line = line.chomp
    name, date, year = line.split(",")
    month, day = date.split

    birthdays[name] = Time.new(year, month, day)
  end

  puts "Enter the name you wish to know the birthday of?"
  input = gets.chomp
  if birthdays.has_key?(input)
    date = birthdays[input]#.strftime("%d-%m-%Y")

    age = Time.now - date
    age = age/31622400

    current = Time.new
    if current.month > date.month && current.day > date.day
      puts "#{input}'s next birthday is on #{date.day} of #{date.strftime("%B")} #{current.year + 1}"
      puts "#{input} will be #{age.to_i + 1}"
    else
      puts "#{input}'s next birthday is on #{date.day} of #{date.strftime("%B")} #{current.year}"
      puts "#{input} will be #{age.to_i + 1}"
    end
  else
    puts "No birthday for this name, try again"
    print "-" * 10
    puts
    birthday_helper
  end
end
birthday_helper
