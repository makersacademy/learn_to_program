KEY = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5], 
  ["I", 1], 
]

def old_school_roman n
  roman = ""

  KEY.each do |x|
    letter = x[0]
    value = x[1]
    roman += letter*(n / value)
    n = n % value
  end
  return roman
end

p old_school_roman 1005
