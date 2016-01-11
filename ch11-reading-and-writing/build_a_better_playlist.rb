def music_shuffle filenames
filenames = filenames.sort
length = filenames.length

#shuffle
2.times do
  right = 0
  left = length/2
  shuffle = []
    
  while shuffle.length < length
    if shuffle.length.even?
      shuffle.push(filenames[right])
      right = right + 1
    else
      shuffle.push(filenames[left])
      left = left + 1
    end
  end
filenames = shuffle
end


#cut

cut = rand(length)
counter = 0
array = []

  while counter < length
    array << filenames[(counter+cut)%length]
    counter = counter + 1
  end
array
end