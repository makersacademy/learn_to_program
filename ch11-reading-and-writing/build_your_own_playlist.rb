# my incomplete solution below, but got timed out... no rspec tests


def music_shuffle filenames
  File.open 'filenames.m3u', 'w' do |f|
  	all_mp3.each do |mp3|
  		f.write mp3.sort_by{rand} + '\n'  #write method returns a string?
  	
  	end
  end
end

puts 'Done!'


#included shuffle method from earlier exercise 

