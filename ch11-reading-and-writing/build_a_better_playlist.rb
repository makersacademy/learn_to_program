# shuffled music playlist maker
# [ INSPIRATION (PROPER HEAVY AT THAT) L2P ]

def music_shuffle(songs)
  # your code here
  songs = songs.sort
  len = songs.length

  2.times do
    l_idx = 0 
    r_idx = len/2 
    shuf = []

    while shuf.length < len 
      if shuf.length%2 == 0
        shuf.push(songs[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(songs[l_idx])
        l_idx = l_idx + 1
      end 
    end
    songs = shuf
  end
   
  shuffled_list = []
  cut = rand(len)
  idx = 0
  while idx < len 
    shuffled_list.push(songs[(idx+cut)%len]) 
    idx = idx + 1
  end

  shuffled_list
end

songs = ['Wherever You Go', 'Shadows Into Light', 'This Very Moment', 'Ancient Paths', 'Pure Fountain', 'Zori', 'Now']
puts(music_shuffle(songs))
