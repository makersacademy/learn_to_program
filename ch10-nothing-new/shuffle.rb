def shuffle array
    shuffled_arr= []

    while array.length > 0
        random= array.sample
        arr= []
        array.each {|x|
            if x == random
                shuffled_arr<< x
            else
                arr<< x
            end
        }
        array= arr
    end
    p shuffled_arr
end