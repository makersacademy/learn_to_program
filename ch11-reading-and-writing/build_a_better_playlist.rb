def music_shuffle filenames
  filenames.map!{|song| song.split("/")}
  mixed_playlist = []
  mixed_playlist << filenames.delete(filenames.sample)
  until filenames.empty?
    rand_song = filenames.sample
    if mixed_playlist.last[0] != rand_song[0]
      mixed_playlist << filenames.delete(rand_song)
    end
  end
  mixed_playlist.map!{|song| song.join("/")}
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

p music_shuffle songs