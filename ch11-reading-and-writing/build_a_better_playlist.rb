def music_shuffle filenames
  Dir.chdir '/Users/rosieallott/Music/test'
  filenames = Dir['/Users/rosieallott/Music/test/**/music*.mp3']
  music_files = filenames.map do |s|
    [s,s.split('/')]
  end
  music_files = music_files.shuffle
end
