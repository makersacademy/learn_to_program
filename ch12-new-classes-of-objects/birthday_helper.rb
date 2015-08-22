file = File.open("info.txt", "r")
names = file.read

info = Hash.new
names.each_line do |line| 
  line = line.chomp
  info[line.downcase[0..-15]] = line[-12..-1]
end

puts 'Input name'
name = gets.chomp.downcase
puts "#{name.upcase}'s birthday is #{info[name]}"


