
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

music = Dir['/users/khalidkarim/music/itunes/itunes\ media/music/*.{mp3,m4a}']

music = music_shuffle music

File.open 'better_playlist.m3u', 'w' do |f|
  music.each do |song|
    f.write song+"\n"
  end
end
