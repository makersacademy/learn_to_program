def shuffle arr
  rec_shuffle(arr, [])
end

def rec_shuffle(arr, shuffled)
  unshuffled = []
  selected = rand(arr.length)
  (0...arr.length).each { |i|
    i == selected ? (shuffled << arr[i]) : (unshuffled << arr[i])
  }
  return shuffled if unshuffled == []
  rec_shuffle(unshuffled, shuffled)
end
