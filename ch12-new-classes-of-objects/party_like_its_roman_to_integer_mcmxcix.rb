
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

def roman2_integer roman
	result = 0 #this is where we output the result to

	for index, value in @data #hmmm we go through the array looking at the two columns as index and value 
		while roman.index(key) == 0 #we just look at the first item in the string passed to the method and take the index item for that character - phew!
			result += value #and add the vale
			roman.slice!(key) #remove the character and round we go until key is nil
			
		end
	end
	result #then we return the result
end