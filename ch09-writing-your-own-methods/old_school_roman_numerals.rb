def old_roman_numeral number
    arr=[]
    result= []
    number_to_arr= number.to_s.split('')
    printer= -> arabic_numeral {arabic_numeral.to_s}

    roman_arr_tens= ["I", "X", "C", "M"]
    roman_arr_fives= ["V", "L", "D"]

    counter= -1
    roman_counter= 0
    
    while counter >= -number_to_arr.length
        arabic= number_to_arr[counter]
        if arabic.to_i <= 4
            (arabic.to_i).times do arr<< printer[roman_arr_tens[roman_counter]] end
           result<< arr.join
        else
            (arabic.to_i-5).times do arr<< printer[roman_arr_tens[roman_counter]] end
           result<< "#{roman_arr_fives[roman_counter]}#{arr.join}"
        end
        arr=[]
        counter-=1
        roman_counter+=1
    end
    result.reverse.join
end