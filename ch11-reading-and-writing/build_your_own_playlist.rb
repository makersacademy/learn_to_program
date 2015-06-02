def shuffle arr

  shuf = []

  x = ""

  while arr.length > 0

    x = arr.sample
    arr.delete(x)
    shuf.push(x)

  end

  shuf

end

filename = 'playlist.m3u'

music_list = Dir["/Users/michaelarnott/Music/iTunes/**/*.{aac,mp3}"]

shuffled_music = shuffle(music_list)

shuffled_music.each do |iterator|
  File.open filename, 'a' do |f|
    f.write iterator + "\n" #could have used f.puts and then wouldnt need to create space
  end
end

# The above method will permanetly alte the caller
