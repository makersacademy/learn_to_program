def old_roman_numeral num
  if (num < 1 || num > 3000)
    puts "Sorry, number must be between 1 and 3000"
  else
# Used for testing only
# puts "Number is between 1 and 3000"
    num_array = []
    num.to_s.each_char { |c| num_array << c }
# Testing
#    puts "#{num_array} (FROM LINE 8!)"
#    puts "Array length = #{num_array.length}"
    old_numerals = []
# The below involves far too much repetition but I ran out of time!
      num_array.length.times {
        if num_array.length - 1 == 0
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "I" }
          else
            old_numerals << "V"
            (num_array[0].to_i-5).times { old_numerals << "I" }
          end
        elsif num_array.length - 2 == 0
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "X" }
          else
            old_numerals << "L"
            (num_array[0].to_i-5).times { old_numerals << "X" }
          end
        elsif num_array.length - 3 == 0
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "C" }
          else
            old_numerals << "D"
            (num_array[0].to_i-5).times { old_numerals << "C" }
          end
        else num_array.length - 4 == 0
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "M" }
          end
        end
        num_array.shift
      }
      end
# Uncomment puts for testing
# puts old_numerals.join
  return old_numerals.join
end

# Below for testing only
=begin
puts "Give me a number between 1 and 3000"
num = gets.chomp
old_roman_numeral num.to_i
=end
