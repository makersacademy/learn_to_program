D = {   2   =>  "twenty", 3   =>  "thirty", 4   =>  "forty", 5   =>  "fifty", 
        6   =>  "sixty",  7   =>  "seventy", 8   =>  "eighty", 9   =>  "ninety",
        10  =>  "ten", 11  =>  "eleven", 12  =>  "Twelve", 13  =>  "thirteen",
        14  =>  "fourteen", 15  =>  "fifteen", 16  =>  "sixteen", 17  =>  "seventeen",
        18  =>  "eighteen", 19  =>  "nineteen"
}

U = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
        7 => "seven", 8 => "eight", 9 => "nine"
}

NUMBERS = { 1000**16 => "quindecillion", 1000**15 => "quattuordecillion", 1000**14 => "tredecillion",
            1000**13 => "duodecillion", 1000**12 => "undecillion", 1000**11 => "decillion", 1000**10 => "nonillion",
            1000**9 => "octillion", 1000**8 => "septillion", 1000**7 => "sextillion", 1000**6 => "quintillion",
            1000**5 => "quadrillion", 1000**4 => "trillion", 1000**3 => "billion", 1000**2 => "million",
            1000 => "thousand"
}

def lt1000(n)
    if n < 100
        return lt100(n)
    else
        i, remainder = n / 100, n % 100
        return remainder != 0 ? "#{lt100(i)} hundred #{lt100(remainder)}" : "#{lt100(i)} hundred"
    end
end

def lt100(n)
    tens , units = n / 10 , n % 10
    return "zero" if n == 0
    return "#{U[n]}" if n.between?(1,9)
    return "#{D[n]}" if n.between?(10,19)
    if units == 0
        return "#{D[tens]}"
    else
        return "#{D[tens]}-#{U[units]}"
    end
end

def english_number(number)
    return "" if number < 0
    return lt1000(number) if number.between?(0,999)
    result = ""
    NUMBERS.each do |k,v|
        x = number / k
        if x > 0
            result += "#{lt1000(x)} #{v} "
            number -= (x * k)
        end
    end
    return number == 0 ? result[0..-2] : result += "#{lt1000(number)}"
end