Dir.chdir '/Users/liam.taylor/Projects/learn_to_program/ch12-new-classes-of-objects'
birthday_array = []
list_of_birthdays = File.read 'birthdays.txt'
birthday_hash = {}
lookup_value = 0
lookup_value_cells = 0
list_of_birthdays.each_line do |line|
birthday_array.push line
end
birthday_array.each do |push|
string_to_search = push
  while lookup_value < 50
    comma_perhaps = string_to_search[lookup_value]
    if comma_perhaps == ","
      name_to_push = string_to_search[0..lookup_value - 1]
      birthday_to_push = string_to_search[lookup_value + 2..-1]
      birthday_hash[name_to_push] = birthday_to_push
      lookup_value = lookup_value + 1
      break
    else lookup_value = lookup_value + 1
    end
  end
end
puts 'Whose birthday? Do you want to know?'
sought_person = gets.chomp
puts "So, you want to know #{sought_person}'s birthday? Well it's #{birthday_hash[sought_person]}."
