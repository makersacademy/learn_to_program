def english_number number
  # No negative numbers.
  return "Please enter a number that isn't negative." if number < 0
  return "zero" if number == 0

  num_string = ""
  ones_place = ["one","two","three","four","five","six","seven","eight","nine"]
  tens_place = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  teenagers  = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  big_numbers = [["hundred", 2],["thousand",3],["million",6],["billion",9],["trillion",12],["quadrillion",15],["quintillion",18],
                 ["sextillion",21],["septillion",24],["octillion",27],["nonillion",30],["decillion",33],["undecillion",36],
                 ["duodecillion",39],["tredecillion",42],["quattuordecillion",45],["quindecillion",48]]

  left = number

  while big_numbers.length > 0
    working_group = big_numbers.pop
    working_name = working_group[0]
    base = 10 ** working_group[1]

    write = left / base
    left = left - write * base

    if write > 0
      working_prefix = english_number write
      num_string << working_prefix + " " + working_name
      num_string << " " if left > 0
    end
  end

  write = left / 10          # How many tens left?
  left = left - write * 10   # Subtract off those tens.

  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    num_string << "-" if left > 0
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  num_string << ones_place[write-1] if write > 0

  num_string
end