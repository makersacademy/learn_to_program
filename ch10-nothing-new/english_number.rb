def english_number number
  if number < 0 #no negative numbers
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  num_string ="" #String which will be returned

  ones_place = ["one","two","three","four","five","six","seven","eight","nine"]
  tens_place = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  teenagers = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  big_ones = {
    "thousand" => 3,
    "million"  => 6,
    "billion" => 9,
    "trillion" => 12,
    "quadrillion" => 15,
    "quintillion" => 18,
    "sextillion" => 21,
    "septillion" => 24,
    "octillion" => 27,
    "nonillion" => 30,
    "decillion" => 33,
    "undecillion" => 36,
    "duodecillion" => 39,
    "tredecillion" => 42,
    "quattuordecillion" => 45,
    "quindecillion" => 48,
    "sexdecillion" => 51,
    "octodecillion" => 57,
    "novemdecillion" => 60,
    "vigintillion" => 63,
    "centillion" => 303
  }

  #left is how much of the number we have left to write out
  #"write" is the part we are writing out now

  left = number

  big_ones.to_a.reverse.to_h.each do |word, power|
    write = left/(10 ** power)
    left = left - (write * (10 ** power))

    if write > 0
      adding = english_number write
      num_string = num_string + adding + " #{word}"
      if left > 0
        num_string = num_string + " "
      end
    end
  end

  write = left/100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end