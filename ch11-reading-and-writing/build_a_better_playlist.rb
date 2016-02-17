def music_shuffle filenames
  Dir.chdir '/Users/murilodalri/Desktop'
  def shuffle(arr)
    arr.split('/').shuffle
  end
  mp3s = Dir['/Users/murilodalri/Desktop/Music/**/*.mp3']
  mp3s.shuffle!
  File.open 'playlist.m3u', 'w' do |f|
    mp3s.each do |mp3|
      f.write mp3+"\n"
    end
  end
end
