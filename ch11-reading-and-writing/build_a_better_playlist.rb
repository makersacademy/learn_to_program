def music_shuffle filenames
 # this function seems to do exactly the same thing as arr.srot_by {rand}

  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice.
  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end


  # And cut the deck.
  # This bit I do not understand.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  
  arr
end

# using the shuffle method as defined above
all_oggs = music_shuffle(Dir['**/*.ogg'])
File.open 'playlistMore.m3u', 'w' do |f| 
	all_oggs.each do |ogg|
		f.write ogg+"\n" 
	end
end
puts 'Done!'
