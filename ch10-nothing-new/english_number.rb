def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  large_numbers = ["trillion", "billion", "million", "thousand"]

  left = number
  power = 10 ** 12


  (0...large_numbers.length).each do |i|
    write = left / power
    left = left - write * power

    if write > 0
      x = english_number write
      num_string += x + " #{large_numbers[i]}"

      if left > 0
        num_string += " "
      end
    end
    power = power / 1000
  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string += hundreds + " hundred"

    if left > 0
      num_string += " "
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end

    if left > 0
      num_string += "-"
    end
  end

  write = left
  left = 0

  if write > 0
    num_string += ones_place[write - 1]
  end

  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(20000)
puts english_number(999999)
puts english_number(38825928)
puts english_number(839430483742)
