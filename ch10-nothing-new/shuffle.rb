def shuffle arr
 shuf = []

    while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    new_arr = [] 

    arr.each do |word|
        if curr_index == rand_index
        shuf <<  word
        else
        new_arr << word
        end

        curr_index = curr_index + 1
    end
#curr_index is set at 0, if the random number matches the first position of array, it moves word
# [0] in shuffled array and moves all other words to new arr. curr_index - posion in shuffled array - is increased. 

    arr = new_arr
    end

shuf
    end 
puts(shuffle ([1,2,3,4,5,6]))
    
