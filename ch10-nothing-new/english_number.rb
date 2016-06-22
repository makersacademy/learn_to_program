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

puts english_number(12)
puts english_number(97)
puts english_number(100242)
