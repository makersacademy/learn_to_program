def english_number number
  if number < 0 # No negative numbers.
    return "Please enter a number that isn't negative."
  elsif number == 0
    return "zero"
  end

  num_string = "" # start with empy number string

  ones_place = ["one", "two", "three",
    "four", "five", "six",
    "seven", "eight", "nine"]

    tens_place = ["ten", "twenty", "thirty",
      "forty", "fifty", "sixty",
      "seventy", "eighty", "ninety"]

      teenagers = ["eleven", "twelve", "thirteen",
        "fourteen", "fifteen", "sixteen",
        "seventeen", "eighteen", "nineteen"]

        zillions = [["hundred", 2],["thousand", 3],
        ["million", 6],["billion", 9],["trillion", 12],
        ["quadrillion", 15],["quintillion", 18],
        ["sextillion", 21],["septillion", 24],
        ["octillion", 27],["nonillion", 30],
        ["decillion", 33],["undecillion", 36],
        ["duodecillion", 39],["tredecillion", 42],
        ["quattuordecillion", 45],["quindecillion", 48],
        ["sexdecillion", 51],["septendecillion", 54],
        ["octodecillion", 57],["novemdecillion", 60],
        ["vigintillion", 63],["googol", 100]]


        left_number = number 

        while zillions.length > 0
          zil_pair = zillions.pop #removes last array pair until reaches correct
          zil_name = zil_pair[0] # takes the name of number

          # how many
          zil_base = 10 ** zil_pair[1] 
          write = left_number/zil_base
          left_number = left_number - write*zil_base

          if write > 0
            prefix = english_number write # call method
            num_string = num_string + prefix + " " + zil_name
            if left_number > 0

              num_string = num_string + " " # building the number
            end
          end

        end

        write = left_number/10
        left_number = left_number - write*10
        if write > 0
          if ((write == 1) and (left_number > 0))
            num_string = num_string + teenagers[left_number-1]
            left_number = 0
          else
            num_string = num_string + tens_place[write-1]
          end
          if left_number > 0
            num_string = num_string + "-"
          end
        end
        write = left_number
        left_number = 0
        if write > 0
          num_string = num_string + ones_place[write-1]
        end

        num_string
end

#puts english_number(101)
#puts english_number(234) 
#puts english_number(3211) 
#puts english_number(999999)
