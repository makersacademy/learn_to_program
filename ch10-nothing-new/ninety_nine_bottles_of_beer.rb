def english_number(num)
   
    if num < 0
        return "Please enter a number greater than 0"
    end
    if num == 0
        return "Zero"
    end
    
    ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    large = [["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12]]
    
    answer = ""
    
    left = num
    while large.length > 0
    zil_pair = large.pop
    zil_name = zil_pair[0]
    zil_base = 10**zil_pair[1]
    write = left /zil_base
    left = left - write*zil_base
    
    if write > 0
        prefix = english_number write
        answer = answer + prefix + " " + zil_name
        if left > 0
            answer = answer + " "
        end
    end
end
    
    write = left/10
    left = left - write*10
    
    if write > 0
        if ((write == 1) and (left > 0))
            answer = answer + teens[left-1]
            left = 0
        else 
            answer = answer + tens[write-1]
        end
        if left > 0
            answer = answer + "-"
        end
    end
    
    write = left
    left = 0
    
    if write > 0
        answer = answer + ones[write-1]
    end
    
    answer
    
end


num_start = 5
num_now = num_start
while num_now > 1
puts english_number(num_now).capitalize + " bottles of beer on the wall, " + english_number(num_now) + "bottles of beer"
num_now = num_now - 1
puts "Take one down pass it around" + english_number(num_now) + "bottles of beer on the wall!"
end

puts "One bottle of beer on the wall, one bottle of beer. Take one down pass it around, no more bottles of beer on the wall!"
