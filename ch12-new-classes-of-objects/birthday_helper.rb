def birthday_helper
    birth_dates = Hash.new

    f = File.open('/Users/chris/coding/makers/week2/learn_to_program/ch12-new-classes-of-objects/test6.txt', 'r') do |f| #gets the file from directory
        f.each_line do |line|
            array = line.split(",") # makes an array and creates an object within a comma ","
            birth_dates[array[0]] = "#{array[1].to_i}-#{array[2]}-#{array[3].to_i}" #adds the first object as key and the rest of the objects as stringed value with some interpolation work, separating them with "-"
        end
    end
    puts "Do you want to know when the below person birthday's are?"
    puts "- Christopher Alexander"
    puts "- Christopher Lambert"
    puts "- Christopher Lee"
    puts "- Christopher Lloyd"
    puts "- Christopher Pine"
    puts "- Christopher Plummer"
    puts "- Christopher Walken"
    puts "- King of Spain"
    puts ""
    puts "Please enter a name:"
    choice = gets.chomp         #acquires name 

    array2 = birth_dates[choice].split("-")     #adding name in the hash key, and at the same same making an array where I split the value at "-" that I made earlier
    puts "His birthday is on #{array2[1]} #{array2[2]}." #then I add the relevant objects for his birthday

end

birthday_helper


=begin
my "test6.txt" contains the following input

Christopher Alexander, 1936,October, 4
Christopher Lambert, 1957,March, 29
Christopher Lee, 1922,May, 27
Christopher Lloyd, 1938,October, 22
Christopher Pine, 1976,August, 03
Christopher Plummer, 1927,December, 13
Christopher Walken, 1943,March, 31
The King of Spain, 1938,January, 05    

=end