months = {'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 'May' => 5, 'Jun' => 6, 'Jul' => 7, 'Aug' => 8, 'Sep' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12}

test = File.read('bdh.txt').split("\n")

puts "Search name: [firstname lastname]"
name = gets.chomp.downcase.split(" ").each { |i| i.capitalize! }.join(" ")
found = false

test.each { |entry| 
  if entry.include?(name)
    puts "Name found."; found = true
    array = entry.split(",")
    md = array[1].strip.split(" ")
    year = array[2].strip
    month = months[md[0]]
    day = md[1]
    now = Time.new
    birthday = Time.local(year, month, day)
    seconds = now - birthday

	puts "#{name} is #{seconds/31557600} years old"
	puts "#{name}'s next birthday will be on #{day} #{md[0]}"

  else
  end
  }
  
if found == false then puts "Sorry, name not found." end# your code here