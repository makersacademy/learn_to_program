def roman_to_integer roman

    roman_nums = {
       'i' => 1,
       'v' => 5,
       'x' => 10,
       'l' => 50,
       'c' => 100,
       'd' => 500,
       'm' => 1000
   }


# Our running total
total = 0

# We need to make sure that our method doesn't just identify the value of a single digit and then move onto the next one. For example,
# if the numeral was xiii, we don't wan't three 1's. We must therefore 
prev = 0

# The index of the end numeral
index = roman.length - 1

# c is simply the numeral we are currently focusing on. We enter it's key to find out its value in roman_nums and assign it to val
while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = roman_nums[c]

# If val is false then return an error string
if !val
    puts "This is not a valid roman numeral!"
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
end