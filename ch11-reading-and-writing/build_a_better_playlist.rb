def music_shuffle filenames
  filenames = filenames.sort
  len       = filenames.length

  2.times do
    l_idx = 0
    r_idx = len / 2
    shuf  = []

    while shuf.length < len
      if shuf.length % 2 == 0
        shuf << filenames[r_idx]
        r_idx += 1
      else
        shuf << filenames[l_idx]
        l_idx += 1
      end
    end

    filenames = shuf
  end

  cut_index = rand(len)
  cut_arr1 = filenames[0...cut_index]
  cut_arr2 = filenames[cut_index...len]
  filenames = cut_arr2 + cut_arr1

  filenames
end
