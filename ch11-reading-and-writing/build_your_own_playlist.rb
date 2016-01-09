def create_playlist

  music_folder = '/home/ubuntu/testdir/music'
  filename = 'playlist.m3u'

  out_file = music_folder + "/" + filename
  music_files = Dir[music_folder + '/**/*.mp3']

  song_list = music_files.sort.shuffle.join("\n")

  File.open out_file, 'w' do |f|
    f.write song_list
  end

end

create_playlist
