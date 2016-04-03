def shuffle(arr)
  arr.sort { | a, b | rand <=> rand }
end



def shuffle(arr)
  arr.shuffle
end



def shuffle(arr)
  arr.sort_by{rand}
end



def shuffle(arr)
  shuffle_rec(arr, [])
end

def shuffle_rec(unshuffled, shuffled)
  if unshuffled.length == 0
    return unshuffled
  end

  random_index = rand(unshuffled.length)
  random_el = unshuffled[random_index]

  shuffled << random_el
  unshuffled.delete_at(random_index)

  shuffle_rec(unshuffled, shuffled)

  return shuffled
end



