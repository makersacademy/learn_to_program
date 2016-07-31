def birthday_helper
    
    birthdates = Hash.new
    
    file = File.readlines("ch12_birthday_list.txt") 
    
    file.each do |f|
        temp = f.split(',')
        birthdates[temp[0]] = "#{temp[1]}, #{temp[2]}"
    end
    
    puts "Whose birthday are you looking for?"    
    name_of_person = gets.chomp
    
    return birthdates[name_of_person]
end

puts(birthday_helper())