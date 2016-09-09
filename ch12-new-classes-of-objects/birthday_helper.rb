birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  comma = line.index(',') 
$name = line[0..(comma - 1)] 
$dob = line[-12..-1]
 birth_dates[$name] = $dob
end
 puts "Enter a name"
 name = gets.chomp
  puts (birth_dates[name])[0..5] 



