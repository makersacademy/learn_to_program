def music_shuffle filenames
  filenames = filenames.sort
  num_tracks = filenames.length

  2.times do
    l_idx = 0
    r_idx = num_tracks/2
    shuf = []

    while shuf.length < num_tracks
      if shuf.length%2 == 0
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end

  arr = []
  cut = rand(num_tracks)
  idx = 0

  while idx < num_tracks
    arr.push(filenames[(idx+cut)%num_tracks])
    idx = idx + 1
  end

  arr
end
