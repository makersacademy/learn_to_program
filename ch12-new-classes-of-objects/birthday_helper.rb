File.open('dates.txt', 'w'){|f| f.write("Christopher Alexander, Oct 4, 1936
Christopher Lambert, Mar 29, 1957
Christopher Lee, May 27, 1922
Christopher Lloyd, Oct 22, 1938
Christopher Pine, Aug 3, 1976
Christopher Plummer, Dec 13, 1927
Christopher Walken, Mar 31, 1943
The King of Spain, Jan 5, 1938")}
dates = {}
File.read('dates.txt').each_line{|e| 
	line = e.chomp.split(",")
	dates[line.shift] = line.join
}
puts 'Whose birthday would you like to know?'
name = gets.chomp
puts dates[name]

