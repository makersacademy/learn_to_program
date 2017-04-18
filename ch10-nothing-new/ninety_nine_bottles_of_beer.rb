def english_number number

    if number < 0
        return "Please enter a number that is not negative."
    end
    if number == 0
        return "Zero"
    end

    num_string = ''

	ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	zillions = [
		['hundred', 2],['thousand', 3],['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18],
        ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30], ['decillion', 33], ['undecillion', 36],
        ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45], ['quindecillion', 48], ['sexdecillion', 51], 
        ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60], ['vigintillion', 63], ['googol', 100]
    ]

	left = number

# ======== ZILLIONS ========

    while zillions.length > 0
        zil_pair = zillions.pop
        zil_name = zil_pair[0]
        zil_base = 10 ** zil_pair[1]

# Here we are taking the end zillion, identifying it as a new variable called zil_pair and giving both of its elements
# individual names: zil_name and zil_base (although zil_base is actually using the number as a power to multiply ten and
# get the right number of zeroes)

        write = left/zil_base
        left = left - write * zil_base

        if write > 0
            prefix = english_number(write)
            num_string = num_string + prefix + ' ' + zil_name
            if left > 0
                num_string = num_string + ' '
            end
        end
    end

    write = left / 10
    left = left - write * 10

# =========== TENS ==========

    if write > 0
        if ((write ==1) && (left > 0))
            num_string = num_string + teens[left - 1]
            left = 0
        else
            num_string = num_string + tens[write - 1]
        end

        if left > 0 
            num_string = num_string + '-'
        end
    end

    write = left
    left = 0

# =========== ONES ==========

    if write > 0
        num_string = num_string + ones[write-1]
    end

    num_string
end

def bottles(bottle_num)
    while bottle_num > 0
        nons = "bottles" if bottle_num > 1
        nons = "bottle" if bottle_num <= 1
        stanza = "#{english_number(bottle_num)} #{nons} of beer on the wall, #{english_number(bottle_num)} #{nons} of beer. 
        Take one down, pass it around, #{english_number(bottle_num - 1)} #{nons} of beer."

        puts stanza

        bottle_num = bottle_num - 1
    end
end

bottles(865)














