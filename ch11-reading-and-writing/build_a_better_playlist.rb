
def shuffle filenames
  random_store = []
  2.times do
    for i in 0..(filenames.length-1)
      position = rand(filenames.length)
      random_store.push(filenames[position])
      filenames[position] = nil
      filenames.compact!
    end
    filenames = random_store
    p random_store
  end
  
  random_cut = []
  cut = rand(filenames.length)
  for i in cut..(filenames.length-1)
    random_cut.push(random_store[i])
  end
  for i in 0..(cut-1)
    random_cut.push(random_store[i])
  end
  p cut
  random_cut
end

p shuffle ['a','b','c','d','e','f','g','h']

def music_shuffle filenames
  songs_and_paths = filenames.map do |s|
    [s, s.split('/')] # [song, path]
  end

  tree = {:root => []}

  insert_into_tree = proc do |branch, song, path|
    if path.length == 0 
      branch[:root] << song
    else 
      sub_branch = path[0]
      path.shift 

      if !branch[sub_branch]
        branch[sub_branch] = {:root => []}
      end

      insert_into_tree[branch[sub_branch], song, path]
    end
  end

  songs_and_paths.each{|sp| insert_into_tree[tree, *sp]}

  shuffle_branch = proc do |branch|
    shuffled_subs = []

    branch.each do |key, unshuffled|
      shuffled_subs << if key == :root
      unshuffled 
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