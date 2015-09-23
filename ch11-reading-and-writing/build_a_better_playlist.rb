def music_shuffle filenames
  Dir.chdir ("/Users/NOMNOMg0/Music/")
  
  filenames.shuffle!

  f = File.new('#{filenames}_random.m3u', 'w+')

  filenames.each do |x|
    f.write(x + "\n")
  end
  puts 'Shutting down'
end
