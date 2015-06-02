def music_shuffle filenames
  filenames = filenames.sort
  length    = filenames.length

  2.times do |variable|
    l_idx = 0
    r_idx = length/2
    shuffled = []

    while shuffled.length < length
      if shuffled.length%2 == 0
        shuffled.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuffled.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuffled
  end

  array = []
  cut = rand(length)
  idx = 0

  while idx < length
    array.push(filenames[(idx+cut)%length])
    idx = idx + 1
  end
  
  array  
end

songs = Dir['/Users/Kate/desktop/somemusicfiles/*.m4a']

puts(music_shuffle(songs))
