test_array = ["ant", "bear", "cat", "dog"]

def shuffle(array)
    
    shuffled_array = []
    
    while array.length >  0
    r_index = rand(array.length)
    c_index = 0
    new_array = []
    
    array.each do |item|
        if c_index == r_index
            shuffled_array.push item
        else new_array.push item
        end
        c_index += 1
    end
    array = new_array
    
    end
    
shuffled_array

end

puts shuffle(test_array)
    