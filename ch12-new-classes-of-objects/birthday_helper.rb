#Output required, persons next b'day
#break each line up and put it in a hash, using name as a key and date has value
#Use each-line method, returns each line of the mutiline string one at a time(you may need to chomp them)

text = "Christopher Alexander,  Oct  4, 1936
Christopher Lambert,  Mar 29, 1957
Christopher Lee,  May 27, 1922
Christopher Lloyd,  Oct 22, 1938
Christopher Pine,  Aug  3, 1976
Christopher Plummer,  Dec 13, 1927
Christopher Walken,  Mar 31, 1943
The King of Spain,  Jan  5, 1938"

birth_dates = Hash.new

text.each_line do |x|
	temp_array = x.split(",")
	birth_dates[temp_array[0]] = [temp_array[1], temp_array[2]]
end



puts "Whose birthday would you like to know?"
answer = gets.chomp.downcase

found = 0

birth_dates.each do |k, v|
	if answer == k.downcase
		puts "#{k} has a birthday on #{v[0]}."
		found = 1
		break
	end
end

puts "I don't know that person's birthday" if found != 1






