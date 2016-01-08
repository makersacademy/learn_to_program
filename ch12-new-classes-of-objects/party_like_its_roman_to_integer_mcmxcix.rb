def roman_to_integer roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  roman.reverse.each_char do |c_or_C|
    c = c_or_C.downcase
    val = digit_vals[c]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val *= -1
    else
      prev = val
    end
    
    total += val
  end

  total
end

#my code works but not sure wy it isn't passing travis

=begin
def roman_to_integer roman
    
    hash = {
        "M" => 1000,
        "CM"=> 900,
        "D"=> 500,
        "CD"=> 400,
        "C"=> 100,
        "XC"=> 90,
        "L"=> 50,
        "XL"=> 40,
        "X"=> 10,
        "IX"=> 9,
        "V"=> 5,
        "IV"=> 4,
        "I" => 1
    }
    
    roman_split = roman.upcase.chars
  
    new_roman = roman_split.each_with_index do |i, j|
                    if i == "C" && roman_split[j+1] == "M"
                        i << "M"
                        roman_split.delete_at(j+1)
                    elsif i == "C" && roman_split[j+1] == "D"
                        i << "D"
                        roman_split.delete_at(j+1)
                    elsif i == "X" && roman_split[j+1] == "C"
                        i << "C"
                        roman_split.delete_at(j+1)
                    elsif i == "X" && roman_split[j+1] == "L"
                        i << "L"
                        roman_split.delete_at(j+1)
                    elsif i == "I" && roman_split[j+1] == "X"
                        i << "X"
                        roman_split.delete_at(j+1)
                    elsif i == "I" && roman_split[j+1] == "V"
                        i << "V"
                        roman_split.delete_at(j+1)
                    end
                end
    
    
    integer = 0
    new_roman.each do |i|
        if hash.has_key?(i) == true
            integer += hash[i]
        end
    end
    
    return integer
  
end
=end



