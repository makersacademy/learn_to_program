def dictionary_sort(unsorted_arr, sorted_array)
    if unsorted_arr.length <= 0
        return
    end
    x = 0
    y = 0
    while y < unsorted_arr.length
        if unsorted_arr[x].downcase < unsorted_arr[y].downcase
            y += 1
        elsif unsorted_arr[x].downcase > unsorted_arr[y].downcase
            x = y
            y += 1
        else
            y += 1
        end
    end
    sorted_array.push(unsorted_arr[x])
    unsorted_arr.delete(unsorted_arr[x])
    dictionary_sort(unsorted_arr, sorted_array)
end

unsorted_arr = []
sorted_array = []

unsorted_arr.push gets.chomp while unsorted_arr.last != ''
unsorted_arr.pop

dictionary_sort(unsorted_arr, sorted_array)
puts sorted_array
