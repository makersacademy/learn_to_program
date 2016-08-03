def music_shuffle filenames
Dir.chdir '/Users/Joey/Music/iTunes/iTunes Media/Apple Music'
puts Dir['**/*/*.m4p'].shuffle
end
