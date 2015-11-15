=begin

def music_shuffle filenames

	filenames.each {|x|  split_filenames << x.split("/") }
  
	playlist = split_filenames.flatten.shuffle
	filename = "playlist.txt"
	File.open filename 'w' do |f|
		f.puts playlist
	end
end

=end 

def music_shuffle filenames

  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
   
    while shuf.length < len
      if shuf.length%2 == 0
      
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
       
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end
  
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  
  arr
end