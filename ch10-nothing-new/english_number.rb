def english_number number
    return " please enter the number that isnt negative" if number < 0
    return "zero" if number == 0

    string_numb= ""
    ones= ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teens= ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineten']
    tens= ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    big_numbers=[['hundred',2], ['thousand',3], ['million',6], ['billion',9], ['trillion',12], ['quadrillion',15], ['quintillion',18], ['sextillion',21], ['septillion',24], ['octillion', 27], ['nonillion', 30], ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45], ['quindecillion', 48], ['sexdecillion', 51], ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60], ['vigintillion', 63], ['googol', 100]]
    
    left= number

    while big_numbers.length > 0
        big_num_pair= big_numbers.pop
        big_num_name= big_num_pair[0]
        big_num_base= 10 ** big_num_pair[1]
        write= left/big_num_base
        left= left - write*big_num_base

        if write > 0
            prefix= english_number write
            string_numb= string_numb + prefix + ' ' + big_num_name
            string_numb= string_numb + ' ' if left > 0
        end
    end

    write= left/10
    left= left - write*10

    if write > 0
        if (write == 1) && (left > 0)
            string_numb= string_numb + teens[left-1]
            left= 0
        else
            string_numb= string_numb + tens[write-1]
        end
        string_numb= string_numb + '-' if left > 0
    end

    write= left
    left= 0

    string_numb= string_numb + ones[write-1] if write > 0
    string_numb
end