# Not sure if this is just a shuffle or mixed up.
def music_shuffle(filenames)
  filenames = filenames.sort

  length = filenames.length
  half = length / 2
  left_half = filenames[0...half]
  right_half = filenames[half..-1]

  shuff = []
  alternate = right_half.zip(left_half).flatten.compact

  while shuff.length < length
    alternate.each_with_index do |song, index|
      if index == rand(length)
        shuff << song
        alternate.delete(song)
      end
    end
  end
  shuff
end

#puts music_shuffle(["Song1", "Song2", "Song3", "Song4", "Song5", "Song6", "Song7"])
