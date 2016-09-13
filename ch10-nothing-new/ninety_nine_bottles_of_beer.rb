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
  big_numbers = ["million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]

  left = number

  while left > 999_999
      case
      when left < 10**9
        num = 0
        write = left / 1_000_000
        left = left - write * 1_000_000
      when left < 10**12
        num = 1
        write = left / 10**9
        left = left - write * 10**9
      when left < 10**15
        num = 2
        write = left / 10**12
        left = left - write * 10**12
      when left < 10**18
        num = 3
        write = left / 10**15
        left = left - write * 10**15
      when left < 10**21
        num = 4
        write = left / 10**18
        left = left - write * 10**18
      when left < 10**24
        num = 5
        write = left / 10**21
        left = left - write * 10**21
      when left < 10**27
        num = 6
        write = left / 10**24
        left = left - write * 10**24
      when left < 10**30
        num = 7
        write = left / 10**27
        left = left - write * 10**27
      when left < 10**33
        num = 8
        write = left / 10**30
        left = left - write * 10**30
      when left < 10**36
        num = 9
        write = left / 10**33
        left = left - write * 10**33
      when left < 10**39
        num = 10
        write = left / 10**36
        left = left - write * 10**36
      when left < 10**42
        num = 11
        write = left / 10**39
        left = left - write * 10**39
      when left < 10**45
        num = 12
        write = left / 10**42
        left = left - write * 10**42
      when left < 10**48
        num = 13
        write = left / 10**45
        left = left - write * 10**45
      when left < 10**51
        num = 14
        write = left / 10**48
        left = left - write * 10**48
      end

      prefix = english_number write
      num_string = num_string + prefix + " #{big_numbers[num]}"

      if left > 0
        num_string = num_string + " "
      end

    end

  write = left / 1000
  left = left - write * 1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + " thousand"

    if left > 0
      num_string = num_string + " "
    end

  end

  write = left / 100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"

    if left > 0
      num_string = num_string + " "
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]
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

beer_num = 9999

until beer_num == 0
  to_words = english_number beer_num
  puts to_words + " bottles of beer on the wall, " + to_words + " bottles of beer."
  beer_num -= 1
  to_words = english_number beer_num
  if beer_num == 0
    puts "Take one down and pass it around, no more bottles of beer on the wall"
    puts
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  else
   puts "Take one down and pass it around, " + to_words + " bottles of beer on the wall"
  end
  puts
end
