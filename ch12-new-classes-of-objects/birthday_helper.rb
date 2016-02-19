#The follow will set up the text file in order to do the exercise.
File.open "birthday.txt", 'w' do |f|
  f.write "Christopher Alexander, Oct 4, 1936
Christopher Lambert, Mar 29, 1957
Christopher Lee, May 27, 1922
Christopher Lloyd, Oct 22, 1938
Christopher Pine, Oct 4, 1936
Christopher Plummer, Dec 13, 1927
Christopher Walken, Mar 31, 1943
The King of Spain, Jan 5, 1938"
end

# == ACTUAL exercise below
birthday_file = File.read "birthday.txt"
separated_lines = birthday_file.split("\n")
separated_lines = separated_lines.map { |line| line.split(", ",2) } #The second parameter given to split limits the number of splits so string is split in only two parts, name and birthdays

names = {}
 separated_lines.each do |a,b|
  names[a] = b
end

names # => {"Christopher Alexander"=>"Oct 4, 1936", "Christopher Lambert"=>"Mar 29, 1957", "Christopher Lee"=>"May 27, 1922", "Christopher Lloyd"=>"Oct 22, 1938", "Christopher Pine"=>"Oct 4, 1936", "Christopher Plummer"=>"Dec 13, 1927", "Christopher Walken"=>"Mar 31, 1943", "The King of Spain"=>"Jan 5, 1938"}

puts "Enter the name of the persons whose birthday you wish to see."

while true
  input = gets.chomp
  if names.key?(input)
    puts names[input]
    break
  else
    puts "Not found, try entering again."
  end
end
