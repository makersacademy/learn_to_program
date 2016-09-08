def shuffle(arr)
  rec_unsort(arr, [])
end

def rec_unsort(sorted, shuffeled)
  if sorted.length == 0
    return shuffeled
  end

  object = sorted[rand(0..(sorted.length-1))]
  shuffeled.push object
  sorted.delete(object)

  rec_unsort(sorted, shuffeled)
end

puts(shuffle(['Guess', 'it\'s', 'true', 'I\'m', 'not', 'good', 'at', 'a', 'one-night', 'stand']))
