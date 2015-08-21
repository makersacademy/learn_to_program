def Number_converter(roman)
  # Create a Hash that contains the Roman Numerals and set variables

  numerals = {'i'=> 1,
   'v'=> 5,
    'x'=> 10,
     'l'=> 50,
      'c'=> 100,
       'd'=> 500,
        'm'=> 1000}

  total = 0
  previous = 0
  index = roman.length - 1

  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = numerals[c]
    if !val
      return "Please enter a valid Roman Numeral e.g. 'MCMXCIX'"
    end
    if val < previous
      val = val * -1
    else
      previous = val
    end
    total = total + val
  end
  total 
end