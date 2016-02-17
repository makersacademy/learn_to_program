def music_shuffle filenames
  filenames.map!{|song| song.split("/")}
  mixed_playlist = []
  mixed_playlist << filenames.delete(filenames.sample)
  while filenames.size >0
    rand_song = filenames.sample
    # if mixed_playlist.last[0] != rand_song[0]
    #    mixed_playlist << filenames.delete(rand_song)
    # end
    mixed_playlist << filenames.delete(rand_song)
  end
  mixed_playlist.map!{|song| song.join("/")}
end
