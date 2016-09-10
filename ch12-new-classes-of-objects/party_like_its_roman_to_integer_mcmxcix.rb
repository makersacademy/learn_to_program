def roman_to_integer(roman)
  letter_values = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}


  total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0 
    letter = roman[index] #roman[6]

    index = index - 1 # index = 5

    val = letter_values[letter] #letter_values[x]
    results_array = []

    roman.split("").each {|individual_letter| 
        results_array << ((letter_values.keys).join).include?(individual_letter)
      }

  if results_array.include?(false)
      puts "This is not a valid roman numeral"
  end

  if val < prev
    val = val * -1
    
  else
    prev = val
    
  end
    total = total + val
  end

  total

end


puts(roman_to_integer('mcmxcix'))


