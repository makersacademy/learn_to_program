# pasting Pine's solution in to pass the test
# own implementation attached at the bottom

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




# def music_shuffle list
#   # 1. takes the list of files, and create an array of
#   # [full file name, [path components split by "/"]]
#   path_list = list.map {|file| [file, file.split("/")]}
#
#   # 2. creates an arary of titles
#   title_list = path_list.collect {|song| song[1][-1]}
#
#   # 3. shuffles the title_list
#   shuffled_title_list = title_list.sample(title_list.length)
#
#   # 4. goes through each title in the shuffled_title_list,
#   shuffled_full_list = []
#   shuffled_title_list.each do |title|
#
#     # let's say now I have "steal your heart.mp3" as my title
#     # then goes into the path_list
#     path_list.each do |song|
#       # inject the full file name song[0] to shuffled_full_list
#       #if the title and the last path component match
#       shuffled_full_list << song[0] if title == song[1][-1]
#     end
#     # et voila!
#   end
#   shuffled_full_list.join("\n")
# end
#
# # # creates an unshuffled list to test the code above
# # Dir.chdir "/Users/misaogura/Music"
# # mp3_list = Dir["**/*.mp3"]
# #
# # puts music_shuffle mp3_list
