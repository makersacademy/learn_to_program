def music_shuffle filenames
  length = filenames.length
  shuffles = length*length

  shuffles.times do |t|
    index = 0
    while index < (length -1)
      n = filenames[index]
      nn = filenames[index+1]

      shuffle_it = rand(length) < (length/2)

      if shuffle_it
        filenames[index] = nn
        filenames[index+1] = n
      end
      index += 1
    end
  end
  return arr
end



