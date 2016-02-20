Dir.chdir '/Users/Gabrielle/Music/iTunes/iTunes Media/Test'

playlist = Dir['**/*.mp3']

playlist_name = 'playlist.m3u'
    File.open playlist_name, 'w' do |p|
      p.write playlist.shuffle
    end

def music_shuffle playlist
  playlist.shuffle!
end
# playlist_name = 'playlist.m3u'
#     File.open playlist_name, 'w' do |p|
#       p.write playlist.shuffle
#     end
# end


    # songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
    #      'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']


# puts music_shuffle(songs)