output_dir = 'D:/RUBY_TEST_DELETE/'
Dir.chdir output_dir	#Working directory where the m3u file will be writtten to.
										#If this is not specified the m3u file will be written to the directory where the program was run from.
search_dir = "D:/RUBY_TEST_DELETE/**/*.mp3" #Where the mp3 files should be searched for.
all_mp3s = (Dir[search_dir]).shuffle
puts all_mp3s

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end
puts
puts "A randomized list of songs found in \"#{search_dir}\" has been created in \"#{output_dir}\"."