def music_shuffle filenames
  Dir.chdir ("/Users/NOMNOMg0/Music/")
  
  filenames.shuffle!
  #uses  Fisher–Yates shuffle
  #instead of Schwartzian transform,
  #apparently, and so is better than sort_by{rand}
  f = File.new('#{filenames}_random.m3u', 'w+')

  filenames.each do |x|
    f.write(x + "\n")
  end
  puts 'Shutting down'
end
