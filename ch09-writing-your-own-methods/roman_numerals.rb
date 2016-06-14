def roman_numeral num

decimals = [1000, 500, 100, 50, 10, 5, 1]
numerals = ["M", "D", "C", "L", "X", "V", "I"]
dec_nines = [900, 400, 90, 40, 9, 4, 1]
num_nines = ["C", "C", "X", "X", "I", "I", ""]

idx = 0
str = ""

while idx < decimals.length
        i = num/decimals[idx]
        num = num % decimals[idx]

        if num >= dec_nines[idx]
        		str = str + (numerals[idx].to_s * i) + num_nines[idx].to_s + numerals[idx].to_s
        		num = num - dec_nines[idx]
        else
        	str = str + (numerals[idx].to_s * i)
        end

        idx += 1
end

return str
end

