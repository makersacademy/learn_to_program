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

no_of_bottles = 1000

while no_of_bottles >= 1

  no_of_bottles == 1? bottles = "bottle" : bottles = "bottles"

  puts "#{english_number(no_of_bottles).capitalize} #{bottles} of beer on the wall,"
  puts "#{english_number(no_of_bottles).capitalize} #{bottles} of beer,"
  puts "You take one down, pass it around,"

  no_of_bottles = no_of_bottles - 1

  no_of_bottles == 1?   bottles_less_one = "bottle" : bottles_less_one = "bottles"

  puts "#{english_number(no_of_bottles).capitalize} #{bottles_less_one} of beer on the wall."
end
