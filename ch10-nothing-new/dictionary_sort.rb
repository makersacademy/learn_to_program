def dictionary_sort(array, sorted_array =[])
    return sorted_array if array == []
    min_word = array.min_by{|word| word.downcase}
    sorted_array<< min_word
    array.delete_at(array.index(min_word))
    dictionary_sort(array,sorted_array)
end
