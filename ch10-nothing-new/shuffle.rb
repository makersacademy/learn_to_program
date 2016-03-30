def shuffle arr
  shuffle_recursive arr, []
end

def shuffle_recursive unshuffled, shuffled
  return unshuffled if unshuffled.length == 0

  random_index = rand(unshuffled.length)
  random_element = unshuffled[random_index]

  shuffled << random_element
  unshuffled.delete_at(random_index)

  shuffle_recursive unshuffled, shuffled

  return shuffled
end