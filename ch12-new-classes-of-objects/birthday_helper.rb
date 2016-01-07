filename = "birthdays.txt"
names_str = File.read filename
names_hash = {}
names_str.each_line do |line|
  arr = line.split(',')
  names_hash[arr[0]] = arr[1].lstrip + ',' + arr[2].chomp
end

puts "Enter a name, or part of it and I tell you the person's birthday"
name = gets.chomp
found = false
names_hash.each do |key,value|
  if key =~ /#{name}/i
    puts "The birthday of #{key} is on #{value}"
    found = true
  end
end
if found == false
  puts "This name is not in my list"
end
