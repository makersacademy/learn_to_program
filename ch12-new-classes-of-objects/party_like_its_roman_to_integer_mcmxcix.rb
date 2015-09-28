def roman_to_integer roman

  roman = roman.upcase
  for each in 1..3000
    if roman == roman_numeral(each)
      return each
    end
  end
end

def roman_numeral num
  if (num < 1 || num > 3000)
    puts "Sorry, number must be between 1 and 3000"
  else
    num_array = []
    num.to_s.each_char { |c| num_array << c }
    numerals = []
      num_array.length.times {
        if num_array.length == 1
          case
          when num_array[0].to_i < 4
            num_array[0].to_i.times { numerals << "I" }
          when num_array[0].to_i > 6 && num_array[0].to_i < 9
            numerals << "V"
            (num_array[0].to_i-5).times { numerals << "I" }
          when num_array[0].to_i == 4 || num_array[0].to_i == 6
            num_array[0].to_i == 4 ? numerals << "IV" : numerals << "VI"
          else num_array[0].to_i == 5 || num_array[0].to_i == 9
            num_array[0].to_i == 5 ? numerals << "V" : numerals << "IX"
          end
        elsif num_array.length == 2
          case
          when num_array[0].to_i < 4
            num_array[0].to_i.times { numerals << "X" }
          when num_array[0].to_i > 6 && num_array[0].to_i < 9
            numerals << "L"
            (num_array[0].to_i-5).times { numerals << "X" }
          when num_array[0].to_i == 4 || num_array[0].to_i == 6
            num_array[0].to_i == 4 ? numerals << "XL" : numerals << "LX"
          else num_array[0].to_i == 5 || num_array[0].to_i == 9
            num_array[0].to_i == 5 ? numerals << "L" : numerals << "XC"
          end
        elsif num_array.length == 3
          case
          when num_array[0].to_i < 4
            num_array[0].to_i.times { numerals << "C" }
          when num_array[0].to_i > 6 && num_array[0].to_i < 9
            numerals << "D"
            (num_array[0].to_i-5).times { numerals << "C" }
          when num_array[0].to_i == 4 || num_array[0].to_i == 6
            num_array[0].to_i == 4 ? numerals << "CD" : numerals << "DC"
          else num_array[0].to_i == 5 || num_array[0].to_i == 9
            num_array[0].to_i == 5 ? numerals << "D" : numerals << "CM"
          end
        else num_array.length == 4
          if num_array[0].to_i < 5
            num_array[0].to_i.times { numerals << "M" }
          end
        end
        num_array.shift
      }
      end
  return numerals.join
end