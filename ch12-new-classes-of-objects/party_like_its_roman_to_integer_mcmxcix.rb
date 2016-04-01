require 'pry'
def roman_to_integer roman
 
  numbers_array = [ ['CM', '900'], ['CD', '400'], ['XC', '90'], ['XL', '40'], 
                    ['IX', '9'], ['IV', '4'], ['M', '1000'], ['D', '500'],
                    ['C', '100'], ['L', '50'], ['X', '10'], ['V', '5'], ['I', '1']]

  new_string = roman.upcase
  integer = 0
  roman_regex = /^(M{0,4})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/

  unless new_string =~ roman_regex
    puts "Invalid input. Please enter a roman numeral: "
    roman = gets.chomp
  end

  while true
    numbers_array.each do |inner_array|
      if new_string.sub(inner_array[0], inner_array[1]) != new_string
        integer += inner_array[1].to_i
        new_string = new_string.sub!(inner_array[0], inner_array[1])
        new_string.delete!(inner_array[1]) if new_string != nil
      end
    end
    integer
    new_string
    break if new_string == ""
  end
  integer
end 

# roman_to_integer("II")
