
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
	result = 0

	for index, value in @data
		while roman.index(key) == 0
			result += value
			roman.slice!(key)
			
		end
	end
	result
end