def shuffle(arr)
  random_shuffle arr, []
end

def random_shuffle(unshuffled_arr, shuffled_arr)
  unshuffled_arr.count.downto(1) do |n|
    shuffled_arr.push unshuffled_arr.delete_at(rand(n))
  end
  return shuffled_arr
end

# print shuffle([3, 7, 2, 6, 9, 4, 8, 1, 5])
