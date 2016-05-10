def shuffle arr
  recursive_shuffle(arr, [])
end

def recursive_shuffle(array, shuffled) 
  return shuffled if array == []
  shuffled << array.delete_at(array.index(array[rand(array.size)]))
  recursive_shuffle(array, shuffled)
end
