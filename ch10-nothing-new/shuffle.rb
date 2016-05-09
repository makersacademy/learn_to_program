def shuffle(arr)
	shuffled = []
	until arr.length == 0
    random_index = rand(0..arr.length)
    
    index = 0
    stilltoshuffle = []

    arr.each do |value|
    	if index == random_index
    		shuffled << value
    	else
    		stilltoshuffle << value
    	end

    index += 1
    end

    arr = stilltoshuffle

    end
    shuffled
end
