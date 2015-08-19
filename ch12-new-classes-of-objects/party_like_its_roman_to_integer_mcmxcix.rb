
  # first create an array of values with roman as key and integers as values
 @data = [
    ["M"  , 1000],
    ["CM" , 900],
    ["D"  , 500],
    ["CD" , 400],
    ["C"  , 100],
    ["XC" ,  90],
    ["L"  ,  50],
    ["XL" ,  40],
    ["X"  ,  10],
    ["IX" ,   9],
    ["V"  ,   5],
    ["IV" ,   4],
    ["I"  ,   1]
    ]

# still need to work out how to check for invaild numerals - so if value is not in the array puts an error message

def roman_to_integer roman
    reply = 0 # this is where we will send the output
 for key, value in @data #look for the key and value
     while roman.index(key) == 0 #of the first character
     reply += value #add that number to reply
     roman.slice!(key) #remove the character
     end    
     end

reply #and return

 end

 puts(roman_to_integer("MCM"))
  puts(roman_to_integer("ABC"))


