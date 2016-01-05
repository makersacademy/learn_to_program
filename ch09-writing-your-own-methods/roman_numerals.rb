KEY = [
  ["M", 1000], 
  ["CM", 900],
  ["D", 500], 
  ["CD", 400],
  ["C", 100], 
  ["XC", 90],
  ["L", 50], 
  ["XL", 40],
  ["X", 10],
  ["IX", 9],
  ["V", 5], 
  ["IV", 4],
  ["I", 1], 
]

def roman_numeral n
  roman = ""

  KEY.each do |x|
    letter = x[0]
    value = x[1]
    roman += letter*(n / value)
    n = n % value
  end
  return roman
end

p roman_numeral 1009


