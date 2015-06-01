def english_number remaining
  return "zero" if remaining == 0
  return "Please enter a positive number or zero." if remaining < 0

  result = ""

  ones_array        = ["one",
                "two",
                "three",
                "four",
                "five",
                "six",
                "seven",
                "eight",
                "nine"]
  tens_array        = ["ten",
                "twenty",
                "thirty",
                "forty",
                "fifty",
                "sixty",
                "seventy",
                "eighty",
                "ninety"]
  teenagers_array   = ["eleven",
                "twelve",
                "thirteen",
                "forteen",
                "fifteen",
                "sixteen",
                "seventeen",
                "eighteen",
                "nineteen"]

  how_many_billions = remaining / 1_000_000_000
  remaining         %= 1_000_000_000

  if how_many_billions > 0
    result << english_number(how_many_billions) + " billion"
    result << ", " if remaining > 0
  end

  how_many_millions = remaining / 1_000_000
  remaining         %= 1_000_000

  if how_many_millions > 0
    result << english_number(how_many_millions) + " million"
    result << ", " if remaining > 0
  end

  how_many_thousands = remaining / 1000
  remaining          %= 1000

  if how_many_thousands > 0
    result << english_number(how_many_thousands) + " thousand"
    result << ", " if remaining > 0
  end

  how_many_hundreds = remaining / 100
  remaining         %= 100

  if how_many_hundreds > 0
    result << english_number(how_many_hundreds) + " hundred"
    result << " and " if remaining > 0
  end

  how_many_tens = remaining / 10
  remaining     %= 10

  if how_many_tens > 0
    if ((how_many_tens == 1) and (remaining > 0))
      result << teenagers_array[remaining-1]
      remaining = 0
    else
      result << tens_array[how_many_tens-1]
    end
    result << '-' if remaining > 0
  end

  how_many_ones = remaining

  if how_many_ones > 0
    result << ones_array[how_many_ones-1]
  end

  result
end

def bottles(number)
  raise "Negative bottles." if number < 0

  count = (0..number).to_a.reverse
  count.each do |how_many_bottles|
    p "#{english_number(how_many_bottles)} bottles of beer on the wall."
  end
end