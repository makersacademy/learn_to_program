def roman_to_integer roman
digit_vals = {'i' => 1,
'v' => 5,
'x' => 10,
'l' => 50,
'c' => 100,
'd' => 500,
'm' => 1000}

total = 0
prev = 0
index = roman.length - 1

while index >= 0
c = roman[index].downcase
index = index - 1
val = digit_vals[c]

if !val
puts 'This is not a valid roman numeral!'
return
end

if val < prev
val = val * -1
else
prev = val
end

total = total + val

end

total

#work in progress

=begin
def roman_to_integer roman

num= 0
roman_numerals = [["M", 1000], ["D", 500], ["C", 100], ["L",50], ["X",10], ["V", 5],  ["I", 1]]
index = 0

while index < roman.length-1
roman_numerals.each do |item|
if roman[index] == item[0]
	num += item[1]
	index += 1
	p num
else
	index += 1
end
end
end


p num
end
=end





end
