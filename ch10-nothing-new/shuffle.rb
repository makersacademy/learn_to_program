def shuffle arr
  recursive_shuffle(arr, [])
end

def recursive_shuffle(unshuffled, shuffled)

  if unshuffled.size <= 0
    return shuffled
  end

  # generate number between 1 and length of unshuffled
  index = rand(unshuffled.size)
  selected = unshuffled[index]
  # use this number to find the item at that index then delete from unshuffled
  unshuffled.delete_at(index)
  # add the item to shuffled
  shuffled << selected
  # recursively repeat
  recursive_shuffle(unshuffled, shuffled)
end
