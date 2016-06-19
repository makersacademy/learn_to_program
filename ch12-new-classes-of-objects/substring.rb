str = "Hello, world! I can program!"
filename = "Please_no_more_CP_book.ogg"

puts str[7,5]
puts str[7..11]
puts str['program']

if filename[-4..-1] ==".ogg"
	puts "your file extension is .ogg!"
else
	puts "your file extension is not .ogg!"
end