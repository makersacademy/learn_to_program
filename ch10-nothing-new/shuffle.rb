def shuffle(arr)
  shuffled = []

  length = arr.length

    until arr.empty?
      length = arr.length
      random_index = rand(length)
      shuffled << arr.slice!(random_index)
    end
  shuffled
end
