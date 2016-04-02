#How Chris Pine would do it
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

# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# puts(music_shuffle(songs))


#how you could do it
=begin
def music_shuffle filenames
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling. Let's
  # shuffle the "deck" twice, then cut it once. That's
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.
  # Before we do anything, let's actually *sort* the
  # input, since we don't know how shuffled it might
  # already be, and we don't want it to be *too* random.
  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice.
  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end
  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end
# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# puts(music_shuffle(songs))
=end