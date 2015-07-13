
def shuffle(unsorted_arr, shuffled_array)
    if unsorted_arr.length <= 0
        return
    end
    x = 0 + rand(unsorted_arr.length)

    shuffled_array.push(unsorted_arr[x])
    unsorted_arr.delete(unsorted_arr[x])
    shuffle(unsorted_arr, shuffled_array)
end

unsorted_arr = []
shuffled_array = []
unsorted_arr.push gets.chomp while unsorted_arr.last != ''
unsorted_arr.pop

shuffle(unsorted_arr, shuffled_array)
puts shuffled_array
