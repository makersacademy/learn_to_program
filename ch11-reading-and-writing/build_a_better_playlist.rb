def music_shuffle filenames
  shuffled = []
  while filenames.length > 0
    shuffled << filenames[rand(filenames.length)]
    filenames = filenames - shuffled
  end
   shuffled
end



