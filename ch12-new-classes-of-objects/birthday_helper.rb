text = {}

File.open("/Users/annemariekohler/Desktop/textfile.txt") do |file|
  file.each_line do |line|
    line_text = line.split(', ')
    name = line_text[0]
    birth_date = line_text[1]
    text[name] = birth_date.chomp
  end
end

print "Whose birthday would you like to know? "
answer = gets.chomp

if text.has_key?(answer)
  puts "#{answer}'s birthday is: #{text[answer]}"  
else
  puts "Sorry, I don't know #{answer}'s birthday. Bye."
end
