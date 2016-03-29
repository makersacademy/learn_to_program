
def roman_numeral num
  roman_arr = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  roman = ""
  roman_arr.each do |value, letter|
    roman << letter * (num / value)
    num = num % value
  end
  roman
end

=begin used this as reference since had problems with hashes
def roman_numeral num
    roman_arr = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    remaining = num # the integer on which this method is called
    empty_string = "" # startvalue of result

    return_value = roman_arr.inject(empty_string) do |result, (arab, roman)| 
      # inject = reduce, for each element of our hash
      # arab and roman are the key and value part of the hash elements, result is result from previous iteration
      p [result, arab, roman,remaining.divmod(arab)] # lets's see what happens
      # number of times the remaining can be divided with the value of this roman, the remaining becomes the rest
      whole_part, remaining = remaining.divmod(arab) 
      result << roman * whole_part # if whole_part == 0 nothing happens for this roman
    end

    return_value

end
=end
