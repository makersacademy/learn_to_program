def music_shuffle filenames
    filenames = filenames.sort
    length = filenames.length
 
    5.times do
        l = 0
        r = length / 2
        shuffled = []
     
        while shuffled.length < length
            if shuffled.length.even?
                shuffled.push(filenames[r])
                r += 1
            else
                shuffled.push(filenames[l])
                l += 1
            end
        end
        filenames = shuffled
    end
    
    arr = []
    cut = rand(length)
    number = 0
    
    while number < length
        arr.push(filenames[(number + cut) % length])
        number += 1
    end
    arr
end