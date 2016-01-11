def shuffle(array, shuffled_array=[])
    return shuffled_array if array == []
    number = Random.new
    shuffled_array << array.delete_at(number.rand(array.length))
    shuffle(array, shuffled_array)
end

