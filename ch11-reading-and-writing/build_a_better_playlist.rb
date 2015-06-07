def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  # do shuffle twice
  2.times do
    l_index = 0 # index of the next card/song in the left pile
    r_index = len/2 # index of the next card/song in the right pile
    # if 2 piles are uneven right pile will end up with more cards/songs
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0
        # take song/card from the right side
        shuf.push(filenames[r_index])
        # increment right index by 1
        r_index += 1
      else
        # take a song/card from the left side
        shuf.push(filenames[l_index])
        # increment left index by 1
        l_index += 1
      end
    end

    filenames = shuf

  end

  # cut deck/playlist
  arr = []
  cut = rand(len) # index of card to cut at
  indx = 0

  while indx < len
    arr.push(filenames[(indx+cut)%len]) #
    indx += 1
  end

  arr
end


audio_arr = ["edvard-grieg-peer-gynt1-morning-mood-piano", "Introduction", "JustBeing", "MindfulnessOfBreathing", "mozart-clarinet-concerto-2-piano-and-clarinet"]

puts music_shuffle(audio_arr)


# solution required, went through the first solution, 2nd solution was baffling - revisit after final chapter on procs
