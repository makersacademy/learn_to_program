def shuffle arr
  shuf = []
  while arr.length > 0
  rand_index = rand(arr.length)
  current_index = 0
  new_arr = []
  
  arr.each do |item|
  	if current_index == rand_index
  	  shuf.push item
  	else
  	  new_arr.push item
  	 end
  	 
  	 current_index = current_index + 1
  	 end
  	 
  	 arr = new_arr
  	end
  	
  	shuf
end

all_mp3s = shuffle(Dir["**/*.mp3"])

File.open 'playlist.all' , 'w' do |tunes|
	all_mp3s.each do |mp3|
	tunes.write mp3
	end
end

puts 'Tadaaaaaa'