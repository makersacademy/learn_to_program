birth_dates = {}
File.read("textfile.txt").each_line do |line| 
	  name_date = line.split(', ')
   name = name_date[0]
   date = name_date[1]
   text[name] = date.chomp


puts "what's the name of the birthday boy or girl?"
answer = gets.chomp

if answer == nil
	puts "there is no such person in my list"
else
	puts "#{answer}'s birthday if #{text[ansawer]}"

end
end
# your code here