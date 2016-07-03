def english_number number
    if number < 0
        "Please enter a positve integer"

    #removes the possibility of someone giving us a negative number.
  elsif number == 0
        "zero"

    #Quickly returns zero without having to add a possible solution to someone giving a "0" later on in the method

    else
      num_string = ""
    #Creates an empty string which we will add to before finally returning at the end of the method.

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen','sixteen', 'seventeen', 'eighteen', 'nineteen']

    #Arrays containing the strings we want to use for various numbers

    zillions = [['hundred',            2],
                ['thousand',           3],
                ['million',            6],
                ['billion',            9],
                ['trillion',          12],
                ['quadrillion',       15],
                ['quintillion',       18],
                ['sextillion',        21],
                ['septillion',        24],
                ['octillion',         27],
                ['nonillion',         30],
                ['decillion',         33],
                ['undecillion',       36],
                ['duodecillion',      39],
                ['tredecillion',      42],
                ['quattuordecillion', 45],
                ['quindecillion',     48],
                ['sexdecillion',      51],
                ['septendecillion',   54],
                ['octodecillion',     57],
                ['novemdecillion',    60],
                ['vigintillion',      63],
                ['googol',           100]]

    left = number #how much we have left to go

    while zillions.length > 0
        zil_pair = zillions.pop
        zil_name = zil_pair[0]
        zil_base = 10 ** zil_pair[1]
        write = left/zil_base #The variable being editing right now
        left = left - write * zil_base
        #removes the how ever many Zillions left to remove

        if write > 0
            prefix = english_number write
            num_string = num_string + prefix + " " + zil_name

            if left > 0
                num_string = num_string + " "
            end
        end
    end

    write = left/10 #how many tens left?
    left = left - write * 10

    if write > 0
        if ((write == 1) and (left > 0))
            num_string = num_string + teenagers[left - 1]
            left = 0
        else
            num_string = num_string + tens_place[write - 1]
        end
        if left > 0
            num_string = num_string + "-"
        end
    end
    write = left #and now how many ones.
    left = 0

    if write > 0
        num_string = num_string + ones_place[write - 1]
    end

    num_string
  end
end

puts english_number(103)
puts english_number(1003)
