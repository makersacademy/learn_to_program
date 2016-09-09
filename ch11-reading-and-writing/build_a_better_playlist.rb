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

songs = ['/Users/chris/Downloads/Le Malls - One Dance (Feat. Conor Maynard)[Drake Cover].mp3', '/Users/chris/Downloads/1257504_Beautiful_Morning_Original_Mix.mp3','/Users/chris/Downloads/681412_The_Cure___The_Cause_DJ_Meme_Philly_Suite_Remix.mp3','/Users/chris/Downloads/Avicii - Levels (Original Mix)www.livingelectro.com.mp3']

puts(music_shuffle(songs))