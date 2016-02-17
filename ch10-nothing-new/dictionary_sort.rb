def dictionary_sort array
    array2 = []
    temp_array = array.map{|x| x.capitalize}
    until temp_array.empty?
        array2 << temp_array.min
        temp_array.delete_at(temp_array.find_index(temp_array.min))
    end
    array2 
end