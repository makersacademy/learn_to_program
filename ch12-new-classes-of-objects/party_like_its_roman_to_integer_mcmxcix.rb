def roman_numeral_integer_value(roman) #build an array of integer values
  numeral_value = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  array_of_integers = []

  roman.upcase.split("").each do |rom, index|
    array_of_integers << numeral_value[rom]
  end
  array_of_integers
end

def roman_to_integer(roman)
  array = roman_numeral_integer_value(roman)
  value = 0

  array.each_with_index do |num, ind|
    if num >= array[ind+1].to_i
      value += num
    else
      value -= num
    end
  end
  value
end
