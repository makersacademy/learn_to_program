puts "going to the destination of your music"
Dir.chdir '/Users/rosieallott/Music/test'

music_files = Dir['/Users/rosieallott/Music/test/**/music*.mp3']

def shuffle(arr)
  arr.sort_by{rand}
end

music_files = shuffle(music_files)

filename = 'playlist.m3u'

File.open filename, 'w' do |file|
  file.write music_files
end
