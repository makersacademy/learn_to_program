def english_number number
  if number < 0 #No negative numbers
    puts "Please enter a number greater than 0"
  end
  if number == 0
    return "zero"
  end

  num_string = "" #this is the string we will return

  ones_place = ["one", "two", "three",
                "four", "five", "six",
                "seven", "eight", "nine"]

  tens_place = ["ten", "twenty", "thirty",
                "forty", "fifty", "sixty",
                "seventy", "eighty", "ninety"]

  teens_place = ["eleven", "twelve", "thirteen",
                 "fourteen", "fifteen", "sixteen",
                 "seventeen", "eighteen", "nineteen"]


  #Left is how much of the number is left to write out

  #Write is the part we are writing out now
  left = number

  #Vigintillion
  write = left / 1000000000000000000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000000000000000000

  if write > 0
    vigintillions = english_number write
    num_string = num_string + vigintillions + " vigintillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Novemdecillion
  write = left / 1000000000000000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000000000000000

  if write > 0
    novemdecillions = english_number write
    num_string = num_string + novemdecillions + " novemdecillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Octodecillion
  write = left / 1000000000000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000000000000

  if write > 0
    octodecillion = english_number write
    num_string = num_string + octodecillion + " octodecillions"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Septendecillion
  write = left / 1000000000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000000000

  if write > 0
    septendecillions = english_number write
    num_string = num_string + septendecillions + " septendecillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Sexdecillion
  write = left / 1000000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000000

  if write > 0
    sexdecillions = english_number write
    num_string = num_string + sexdecillions + " sexdecillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Quindecillion
  write = left / 1000000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000000

  if write > 0
    quindecillions = english_number write
    num_string = num_string + quindecillions + " quindecillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Quattuordecillion
  write = left / 1000000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000000

  if write > 0
    quattuordecillions = english_number write
    num_string = num_string + quattuordecillions + " quattuordecillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Tredecillion
  write = left / 1000000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000000

  if write > 0
    tredecillions = english_number write
    num_string = num_string + tredecillions + " tredecillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Duodecillion
  write = left / 1000000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000000

  if write > 0
    duodecillions = english_number write
    num_string = num_string + duodecillions + " duodecillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Undecillion
  write = left / 1000000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000000

  if write > 0
    undecillions = english_number write
    num_string = num_string + undecillions + " undecillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Decillion
  write = left / 1000000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000000

  if write > 0
    decillions = english_number write
    num_string = num_string + decillions + " decillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Nonillion
  write = left / 1000000000000000000000000000000
  left = left - write * 1000000000000000000000000000000

  if write > 0
    nonillions = english_number write
    num_string = num_string + nonillions + " nonillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Octillion
  write = left / 1000000000000000000000000000
  left = left - write * 1000000000000000000000000000

  if write > 0
    octillions = english_number write
    num_string = num_string + octillions + " octillion"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Septillions
  write = left / 1000000000000000000000000
  left = left - write * 1000000000000000000000000

  if write > 0
    septillions = english_number write
    num_string = num_string + septillions + " septillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Sextillions
  write = left / 1000000000000000000000
  left = left - write * 1000000000000000000000

  if write > 0
    sextillions = english_number write
    num_string = num_string + sextillions + " sextillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Quintillions

  write = left / 1000000000000000000
  left = left - write * 1000000000000000000

  if write > 0
    quintillions = english_number write
    num_string = num_string + quintillions + " quintillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Quadrillions

  write = left / 1000000000000000
  left = left - write * 1000000000000000

  if write > 0
    quadrillions = english_number write
    num_string = num_string + quadrillions + " quadrillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Trillions
  write = left / 1000000000000
  left = left - write * 1000000000000

  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + " trillion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Billions
  write = left / 1000000000
  left = left - write * 1000000000

  if write > 0
    billions = english_number write
    num_string = num_string + billions + " billion"
    if left > 0
      num_string = num_string + " "
    end
  end

  #Millions
  write = left / 1000000
  left = left - write * 1000000

  if write > 0
    millions = english_number write
    num_string = num_string + millions + " million"
    if left > 0
      num_string = num_string + " "
    end
  end


  #Thousands
  write = left / 1000 #How many thousands to write out
  left = left - write * 1000 # Remove the thousands

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + " " #insert a space after thousand if there are
                                    #more numbers to follow
    end
  end

  write = left / 100 #How many hundreds to write out
  left = left - write * 100 #Remove the hundreds

  if write > 0
    #Here we use recursion
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0 #If we have tens and ones we insert a space after "hundred"
      num_string = num_string + " "
    end
  end

  write = left / 10 #How many tens to write out
  left = left - write * 10 #Remove the tens

  if write > 0
    if ((write == 1) && (left > 0))
      #We make a special exception for 11-19
      num_string = num_string + teens_place[left - 1]
      #we use write minus 1 because the place for 12 is 1 in the array, not 2
      #This will take care of the digit in the ones place so we can end here
      left = 0

    else #the tens are greater than one so we use tens_place
      num_string = num_string + tens_place[write - 1]
      #-1 is used again as the array index starts at 0
    end

    if left > 0 #We have ones to insert into string
      num_string = num_string + "-"
    end
  end

  write = left #We take the ones which is all that remains in left
  left = 0 #Clear the ones (number should be empty now)

  if write > 0
    num_string = num_string + ones_place[write - 1]
    #Again we use write-1 as the place for 3 is index number 2
  end

  num_string

end
