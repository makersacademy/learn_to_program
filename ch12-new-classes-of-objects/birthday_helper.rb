hash = {}
arr = []
#takes each line & splits it between the date & name
#& puts them into their own array that's pushed into 'arr'
File.read('birthdates.txt').each_line do |line|
  arr << line.chomp.split(/^(.+?),/)
end

#going over each array within 'arr'
#i is each array of names
#deleting empty strings
arr.each do |i|
  i.delete("")
  hash[i[0]] = i[1]
end
#sets the first element in the array to be the Key in the hash
#and the second to be the Value in the hash

puts "Name please:"
puts hash[gets.chomp]




#Note: contents of birthdates.txt file will look like this:
# Christopher Alexander, Oct 4, 1936
# Christopher Lambert, Mar 29, 1957
# Christopher Lee, May 27, 1922
# Christopher Lloyd, Oct 22, 1938
#The King of Spain, Jan 5, 1938
