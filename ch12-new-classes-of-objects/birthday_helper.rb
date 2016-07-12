birth_dates = {'Christopher Alexander' => 'Oct 4, 1936',
    'Christopher Lambert' => 'Mar 29, 1957',
    'Christopher Lee' => 'May 27, 1922',
    'Christopher Lloyd' => 'Oct 22, 1938',
    'Christopher Pine' => 'Aug 3, 1976',
    'Christopher Plummer' => 'Dec 13, 1927',
    'Christopher Walken' => 'Mar 31, 1943',
    'The King of Spain' => 'Jan 5, 1938'}


puts "Welcome in a collective box of birtdays of famous people."
puts "To see the entire list press type list and press enter"

input = gets.chomp.downcase

if input == "list"
    birth_dates.each {|key, value| print "Famous Person : #{key}, /n Birthday : #{value}. " }
    
end



