def roman_to_integer roman
  roman_val = { 'i' => 1,       #hash for roman values
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000 
  }
  total = 0                     #total value to be returned
  prev = 0                      #look below at comments for last if/else conditions
  index = roman.length - 1      #index starts with the first string character to the right of "roman" argument
  while index >= 0              #loop stops running when index becomes less than zero, could also use the loop "until index < 0"
    c = roman[index].downcase
    index = index - 1           #starts over again with the next value to the left
    val = roman_val[c]         #based upon the character, it sets the value from the above hash
    if !val                     #if character does not have a value in the above hash
      puts 'This is not a valid roman numeral!'   #it returns this string and close the method
      return
    end

    if val < prev               #this if statements sorts the characters with a lower value than the previous number
      val = val * -1            #ie. number 9 = IX, where X was run first, followed by I, which satisifes the condition I < X (1 < 10)
    else                        #else the current is not less than the previous value, prev acquires that value
      prev = val                
    end
    total = total + val         #and finally the values are summed up in total
  end
  total
end


puts roman_to_integer('iii')