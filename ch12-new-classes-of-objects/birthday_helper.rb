#Reconstructed from notes_on_birthday_helper

names_birthdays={}

File.read('./christopher_birthdays_list').each_line do |line|
    line=line.chomp
    string_counter=0
    while line[string_counter] != ','
      string_counter=string_counter+1
    end
    name=line[0..(string_counter-1)]
    bday=line[-12..-1]
    names_birthdays[name]=bday
end

puts "Whose birthday do you want to check?"
name=gets.chomp
date=names_birthdays[name]

if date == nil
    puts "Hmm, I don't seem to have them in my book."
else
   puts name.to_s+"'s birthday is "+date[0..5].to_s 
end