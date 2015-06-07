@ROMAN_MAP =  [
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

def roman_to_integer roman
  if ((!roman.is_a?String)) 
    puts "Invalid input"
    exit 
  end
  
  roman = roman.upcase
  reply = 0
  for key, value in @ROMAN_MAP
    while roman.index(key) == 0
      reply += value
      roman.slice!(key)
    end
  end
  reply
  
end
puts roman_to_integer 'i'