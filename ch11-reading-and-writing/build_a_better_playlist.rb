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

def my_music_shuffle filenames

  splitnames = []
  filenames.each do |path|
    splitnames << path.split('/')
  end
  playlist = []
# put first random
  index = rand(splitnames.length)
  playlist[0] = splitnames[index].join('/')
  splitnames.delete_at index
  playlist_index = 1
  while splitnames.length > 1
    count = 0
    found = false
    while count < 2
      index = rand(splitnames.length)
      found = false
# when equal in the first part we try another rand
      if splitnames[index][0] != playlist[playlist_index - 1].split('/')[0]
        playlist[playlist_index] = splitnames[index].join('/')
        splitnames.delete_at index
        playlist_index += 1
        found = true
        break
      else
        count += 1
      end
    end
   if found == false
# still the same after 5 tries, we leave it that way
      playlist[playlist_index] = splitnames[index].join('/')
      splitnames.delete_at index
      playlist_index += 1
    end
  end
# add the last one
  playlist[playlist_index] = splitnames[0].join('/')
  playlist
end

# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#     'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# your_result = ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz',
#     'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
# his_result = ['foo/bar', 'AAA/zzzz', 'aa/ddd',
#     'aa/ccc', 'AAA/xxxx', 'aa/bbb', 'AAA/yyyy']
# p songs
# p your_result
# p his_result
# p music_shuffle songs
