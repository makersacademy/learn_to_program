class Integer
  
  def factorial  
    result = 1
    for each_number in 1...self do	
    	multiplied = (each_number * each_number.next)
    	result = (result * each_number.next)
    end
    return result
  end

  def to_roman
    if (self < 1 || self > 3000)
      puts "Sorry, number must be between 1 and 3000"
    else
      num_array = []
      self.to_s.each_char { |c| num_array << c }
      old_numerals = []
      num_array.length.times {
        if num_array.length == 1
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "I" }
          else
            old_numerals << "V"
            (num_array[0].to_i-5).times { old_numerals << "I" }
          end
        elsif num_array.length == 2
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "X" }
          else
            old_numerals << "L"
            (num_array[0].to_i-5).times { old_numerals << "X" }
          end
        elsif num_array.length == 3
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "C" }
          else
            old_numerals << "D"
            (num_array[0].to_i-5).times { old_numerals << "C" }
          end
        else num_array.length == 4
          if num_array[0].to_i < 5
            num_array[0].to_i.times { old_numerals << "M" }
          end
        end
        num_array.shift
      }
    end
    return old_numerals.join
  end

end