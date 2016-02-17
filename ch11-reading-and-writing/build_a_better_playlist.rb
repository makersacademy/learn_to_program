def music_shuffle list
  # 1. takes the list of files, and create an array of
  # [full file name, [path components split by "/"]]
  path_list = list.map {|file| [file, file.split("/")]}

  # 2. creates an arary of titles
  title_list = path_list.collect {|song| song[1][-1]}

  # 3. shuffles the title_list
  shuffled_title_list = title_list.sample(title_list.length)

  # 4. goes through each title in the shuffled_title_list,
  shuffled_full_list = []
  shuffled_title_list.each do |title|

    # let's say now I have "steal your heart.mp3" as my title
    # then goes into the path_list
    path_list.each do |song|
      # inject the full file name song[0] to shuffled_full_list
      #if the title and the last path component match
      shuffled_full_list << song[0] if title == song[1][-1]
    end
    # et voila!
  end
  shuffled_full_list.join("\n")
end

# # creates an unshuffled list to test the code above
# Dir.chdir "/Users/misaogura/Music"
# mp3_list = Dir["**/*.mp3"]
#
# puts music_shuffle mp3_list
