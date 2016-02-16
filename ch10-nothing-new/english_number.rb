def english_number number
if number < 0
  return "Please enter a number that isn't negative."
end

if number == 0
  return "zero"
end

num_string = ""
ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
teens = ["eleven", "twelve", "thirsteen", "fourteen", "fifteen", "sixteen", "seventeen", "eightteen", "nineteen"]
hunds = ["one hundred", "two hundred", "three hundred", "four hundred", "five hundred", "six hundred", "seven hundred", "eight hundred", "nine hundred"]
zillion = [["thousand", 3],["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15], ["quintillion", 18], ["sextillion", 21], ["septillion", 24], ["octillion", 27], ["nonillion", 30], ["decillion", 33], ["undecillion", 36], ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45], ["quindecillion", 48]] 

left = number
while zillion.length > 0

set = zillion.pop
setname = set[0]
setvalue = set[1]
checksum = 10** setvalue
write = left/checksum
left = left - write * checksum

    if write > 0
    setfactor = english_number(write)
    num_string = num_string + setfactor + " " +setname 
      if left > 0 
        num_string = num_string + ' '
      end
    end
end

write = left/100
left = left - write *100

if write > 0
  num_string = num_string + hunds[write-1]
  if left > 0
    num_string = num_string + " "
  end
end

write = left/10
left = left-write *10

if write >0
  if write ==1 && left > 0 
  num_string = num_string + teens[left-1]
  left = 0
  else 
  num_string = num_string + tens[write-1]
    if left > 0
      num_string = num_string + "-"
    end
  end
end

write = left
left = 0
if write > 0
num_string = num_string + ones[write-1]
end
num_string
end

puts english_number(3211)


