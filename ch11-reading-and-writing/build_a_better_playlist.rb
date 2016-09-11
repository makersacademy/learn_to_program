def music_shuffle filenames

  x = 0
  track_number = 0
  number_songs = 0
  playlist = [ ]
  full_song_name = [ ]
  album_on_deck = ''
  previous_album = ''

  number_songs = filenames.length

  while x < number_songs

    track_number = rand(number_songs)
    full_song_name = filenames[track_number].split'/'
    album_on_deck = full_song_name[2]

    if album_on_deck != previous_album

      if filenames[track_number] != ''
        playlist.push filenames[track_number]
        filenames[track_number] = ''
        x = x + 1
      else
      end

      previous_album = album_on_deck

    else 
    end

  end

  filename = 'C:/Users/Manuela Sabatino/Music/playlist.m3u'

  File.open filename, 'w' do |f|
    f.puts playlist
  end

end

tracks = Dir['C:/Users/Manuela Sabatino/Music/**/*.{ogg,mp3,m4a,wav}']

music_shuffle tracks