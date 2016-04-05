def music_shuffle filenames
  # your code here
  filenames = filenames.sort
  len = filenames.length
  2.times do
      l_idx = 0
      r_idx = len/2
      shuf = []
      while shuf.length < len
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
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  arr
end

=begin
def music_shuffle filenames
  songs_and_paths = filenames.map do |s|
    [s, s.split('/')] # [song, path]
  end

  tree = {:root => []}

  # put each song into the tree
  insert_into_tree = proc do |branch, song, path|
    if path.length == 0 # add to current branch
      branch[:root] << song
    else # delve deeper
      sub_branch = path[0]
      path.shift # like "pop", but pops off the front

      if !branch[sub_branch]
        branch[sub_branch] = {:root => []}
      end

      insert_into_tree[branch[sub_branch], song, path]
    end
  end

  songs_and_paths.each{|sp| insert_into_tree[tree, *sp]}

  # recursively:
  # - shuffle sub-branches (and root)
  # - weight each sub-branch (and root)
  # - merge (shuffle) these groups together
  shuffle_branch = proc do |branch|
    shuffled_subs = []

    branch.each do |key, unshuffled|
      shuffled_subs << if key == :root
      unshuffled # At this level, these are all duplicates.
      else
        shuffle_branch[unshuffled]
      end
    end

    weighted_songs = []

    shuffled_subs.each do |shuffled_songs|
      shuffled_songs.each_with_index do |song, idx|
        num = shuffled_songs.length.to_f
        weight = (idx + rand) / num
        weighted_songs << [song, weight]
      end
    end

    weighted_songs.sort_by{|s,v| v}.map{|s,v| s}
  end
  shuffle_branch[tree]
end
=end