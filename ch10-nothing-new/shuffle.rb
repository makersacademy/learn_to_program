# take a random object out of the array and stick it in a new one
# repeat recursively until no objects are left in the original array


def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    shuffled << arr[rand_index]
    arr.delete_at(rand_index)
  end

  shuffled
end
