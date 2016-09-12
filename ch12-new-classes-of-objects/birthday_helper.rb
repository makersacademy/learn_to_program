#make a hash of bdays (name as key, date as value)
#ask user to input a name
#tell when next bday will be

@filepath = "bdays.txt"

def read_bdays
  hash = {}
  file = File.open(@filepath, 'r')
  file.each_line do |line|
  	# this regex finds first comma and optional spaces after, splits into 2
  	name, date = line.chomp.split(/\,\W*/, 2)
    date, year = date.split(/\,\W*/, 2)
    month, day = date.split(/\W+/, 2)
    hash[name] = [year, month, day]
  end
  return hash
end

## program ##
if File.exist?(@filepath)
  bdays = read_bdays
  
  print "Enter name: "
  input = gets.chomp.strip.downcase
  found = bdays.select do |name, v|
    name.downcase.include?(input)
  end
  if found.empty? 
    puts "-" * 40
    puts "No results.\n\n"
  else
    puts "-" * 40
    now = Time.now
    
    found.each do |k, v|
      bday = Time.gm(v[0], v[1], v[2])
      
      #next year? - not (0), yes (1)
      if_next_year = now.month < bday.month ? 0 : (now.month > bday.month) ? 1 : (now.day > bday.day ? 1 : 0)
      next_bday = [now.year+if_next_year, bday.month, bday.day]
      puts "#{k} next birthday:\t#{next_bday.join(', ')}.\tAge: #{next_bday[0]-bday.year}\n\n" 
    end
  end
  
else
  puts "---> File '#{@filepath}' not found. Can't run the program.\n\n"
end