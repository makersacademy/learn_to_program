require 'pry'

puts "Please enter a number no more than 4 digits: "
  
num = gets.chomp.to_i

def old_roman_numeral num 

  ROMAN = { -1 => ["I", "V"],
            -2 => ["X", "L"], 
            -3 => ["C", "D"], 
            -4 => ["M"]}
 
  num_array = num.to_s.split('').map(&:to_i)
  final_array = []

  i = -1
  loop do
    return 0 if num_array[i] == nil 
    binding.pry
    if num_array[i] > 5 
      final_array << ROMAN[i][1] + ROMAN[i][0] * (num_array[i] - 5)
    else
      final_array << ROMAN[i][0] * num_array[i].to_i
    end
    i -= 1
    break if i == 4
  end
  
  puts final_array.reverse.inject(:+)

end
 
 

