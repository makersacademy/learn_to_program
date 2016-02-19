def music_shuffle(playlist_name,seed=rand)
    srand(seed)
    
    music_files_list = Dir['**/*.{mp3|ogg|flac}']
    
    File.open(playlist_name,w) do |list|
        music_files_list.shuffle.each do |file_name|
            list.write file_name + "\n"
        end
    end   
    puts "wrote #{music_files_list.length} files to ./#{playlist_name}"
end