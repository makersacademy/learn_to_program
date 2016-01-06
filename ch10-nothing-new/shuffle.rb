def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled_array, shuffled_array


  if unshuffled_array.length <= 0
    return shuffled_array
  else
    r=Random.rand(0..unshuffled_array.length)
    shuffled_array << unshuffled_array[r]
    unshuffled_array.delete_at(r)
  end

  rec_shuffle unshuffled_array, shuffled_array
end

print shuffle %w(a b c d e f g)
