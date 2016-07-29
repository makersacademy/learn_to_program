def english_number number
  return "Please enter a number that isn't negative" if number < 0
  return "zero" if number == 0

  numString = ""
  ones_Place = ["one", "two", "three",
                "four", "five", "six",
                "seven", "eight", "nine"]
  tens_Place = ["ten", "twenty", "thirty",
                "forty", "fifty", "sixty",
                "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen",
                "fourteen", "fifteen", "sixteen",
                "seventeen", "eighteen", "nineteen"]

  numdigits = [["hundred", 2],
              ["thousand", 3],
              ["million", 6],
              ["billion", 9],
              ["trillion", 12],
              ["quadrillion", 15],
              ["quintillion", 18],
              ["sextillion", 21],
              ["septillion", 24],
              ["octillion", 27],
              ["nonillion", 30],
              ["decillion", 33],
              ["undecillion", 36],
              ["duodecillion", 39],
              ["tredecillion", 42],
              ["quattuordecillion",45],
              ["quindecillion", 48]]

  left = number

  while numdigits.size > 0
    wordbase = numdigits.pop
    name = wordbase[0]
    order = wordbase[1]

    write = left/(10 ** order)
    left = left - write * (10 ** order)

    if write > 0
      firstbit = english_number write
      numString = numString + firstbit + " " + name
      if left > 0
        numString = numString + " "
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) && (left > 0))
      numString = numString + teenagers[left - 1]
      left = 0
    else
      numString = numString + tens_Place[write - 1]
    end

    if left > 0
      numString = numString + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + ones_Place[write - 1]
  end

  numString
end
