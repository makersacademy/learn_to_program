#not working - return if have time
def dictionary_sort(some_array)
    recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
    min_word =[]
    
    if unsorted_array.length == 0
        return sorted_array
    else
        min_word << (unsorted_array.map(&:downcase)).min
        sorted_array << (unsorted_array.map(&:downcase)).min
        min_word.each do |word| 
            unsorted_array.delete_at((unsorted_array.map(&:downcase)).index(word)) end
        recursive_sort(unsorted_array, sorted_array)
    end
end