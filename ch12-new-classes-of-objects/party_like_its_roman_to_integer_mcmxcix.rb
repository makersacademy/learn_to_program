def roman_to_integer roman
  numerals_dict = {'i' => 1,'v'=>5,'x'=>10,'l'=>50,'c'=>100,'d'=>500,'m'=>1000}

  roman_integer = 0 # This is what we'll add to
  previous = 0 # This is what we'll use to check whether to add or subtract next

  roman.reverse.each_char do |numeral|
      if numerals_dict[numeral] >= previous
        roman_integer += numerals_dict[numeral]
        previous = numerals_dict[numeral]
      else
        roman_integer -= numerals_dict[numeral]
      end
  end
  roman_integer
end

puts roman_to_integer('mmmcdxlvii')
