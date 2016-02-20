def sort(array)
    array2 = []
    until array.empty?
        array2 << array.min
        array.delete_at(array.find_index(array.min))
    end
    array2
end