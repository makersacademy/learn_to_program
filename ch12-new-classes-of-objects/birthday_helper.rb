def birthday_helper file
  read_string = File.read file
  hash = {}
  
  read_string.each_line do |x|
    x = x.chomp.split(",")
    hash [x[0]] = x[1..2].join.strip
  end
  
  print "What is your full name? "
  name = gets.chomp
  
  birthday = hash[name]
  if birthday
    puts "It will be your birthday on #{birthday.split(" ")[0..1].join(" ")}"
  else
    puts "Sorry, I don't know when your birthday is."
  end
end