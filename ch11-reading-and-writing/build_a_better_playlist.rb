#not sure if this is a mix up or a shuffle...

def music_shuffle(filenames)
  filenames = filenames.sort #start by ordering playlist
  length = filenames.length #finds length of playlist
  half = length / 2 #finds half waypoint (if odd right half will be bigger)
  left_half = filenames[0...half]
  right_half = filenames[half..-1]
  shuff = []
  #r_length = right_half.length
  #l_length = left_half.length
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

#puts #music_shuffle(["song1","song2","song3","song4","song5","song6","song7","song8","song9","song10"])
