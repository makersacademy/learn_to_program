def shuffle(arr)

  newarr = arr.sort_by {rand}

  if (newarr <=> arr) != 0
    newarr
  else
    shuffle arr
  end

end

Dir.chdir '/Users/maceybaker/Downloads'

song_names = Dir['*.mp3']

songs = shuffle(song_names).to_a

filename = 'Playlist.m3u'

File.open filename, 'w' do |f|
  f.write songs
end
