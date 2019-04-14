Values = [
  ["M", 1000],
  ["D", 500],
  ["C", 100],
  ["L", 50],
  ["X", 10],
  ["V", 5],
  ["I", 1],
]

def old_school (num)
roman = ""
Values.each do |pair|
  letter = pair[0]
  value = pair[1]
  roman += letter*(num / value)
  num = num % value
end
return roman
end
