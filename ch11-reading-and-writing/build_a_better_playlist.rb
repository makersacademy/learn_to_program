def music_shuffle filenames
	randomized_files = []
	length = filenames.length
	indexes = (0...length).to_a
	indexes.shuffle!
	temp1 = []; temp2 = []; temp3 = []
	indexes.each{
		loop do		
			item = indexes[rand(length)]
			if !temp1.include? item
				temp1 << item 
				break
			end
		end
	}
	temp1.each{
		loop do		
			item = temp1[rand(length)]
			if !temp2.include? item
				temp2 << item 
				break
			end
		end
	}
	temp2.each{
		loop do		
			item = temp2[rand(length)]
			if !temp3.include? item
				temp3 << item 
				break
			end
		end
	}
	indexes = temp3.shuffle!
	for count in 0...length
		randomized_files << filenames[indexes[count]]
	end
	randomized_files		#return filenames to music_shuffle.
end

#Copy of "build_your_own_playlist.rb" below.
output_dir = 'D:/RUBY_TEST_DELETE/'
Dir.chdir output_dir	#Working directory where the m3u file will be writtten to.
										#If this is not specified the m3u file will be written to the directory where the program was run from.
search_dir = "D:/RUBY_TEST_DELETE/**/*.mp3" #Where the mp3 files should be searched for.
all_mp3s = (Dir[search_dir])						

all_mp3s = music_shuffle all_mp3s
puts all_mp3s

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end
puts
puts "A randomized list of songs found in \"#{search_dir}\" has been created in \"#{output_dir}\"."
 
 
=begin
 Instead of using your old shuffle, write a new music_shuffle method. It should take an array of filenames 
 (like those listed previously) and mix them up good and proper. You’ll probably need to use the split method for strings. 
 It returns an array of chopped-up pieces of the original string, split where you specify, like this: 
	awooga = 'this/is/not/a/daffodil'.split '/' 
=end