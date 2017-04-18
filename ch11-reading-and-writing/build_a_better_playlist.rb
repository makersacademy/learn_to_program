def music_shuffle(filenames)
  last_artist = ""

  filenames.each_with_index do |file, index|
    pieces = file.split("/")
    artist = pieces[pieces.index{|p| p == "iTunes Media"}+2]

    if artist == last_artist
      filenames << file
      pieces.delete_at(index)
    end
  end

  filenames
end

songs = Dir["/Users/joestephens/Music/iTunes/iTunes Media/Music/**/*.m4a"].shuffle
puts music_shuffle(songs)
