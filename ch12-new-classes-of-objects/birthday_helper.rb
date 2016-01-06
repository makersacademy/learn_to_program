imported_text = File.read "/Users/GotWai/Desktop/people.txt"

birth_dates = Hash.new

imported_text.each_line do |x|
	temp_array = x.split(", ")
	birth_dates[temp_array[0]] = [temp_array[1], temp_array[2]]
end

puts "Please enter a name"
answer = gets.chomp.downcase

found = 0

birth_dates.each do |k, v|
	if answer == k.downcase
		puts "#{k} has a birthday on #{v[0]}."
		found = 1
		break
	end
end
puts "Don't know that person's birthday" if found != 1