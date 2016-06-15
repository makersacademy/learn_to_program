def music_shuffle filenames

  filenames = filenames.sort
  len = filenames.length


  2.times do
    l_idx = 0
    r_idx = len/2
    shuf = []


    while shuf.length < len
      if shuf.length%2 == 0

        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else

        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end

songs = ['/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/01_Tiny_Monsters.m4a',
         '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/02_Green_Valley.m4a',
         '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/03_Monsoons.m4a',
         '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/04_Telling_Ghosts.m4a',
         '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/05_Horizons.m4a']

puts (music_shuffle(songs))
