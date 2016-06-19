#better playlist 

def shuffle_playlist arr
	arr = arr.sort
	number_songs = arr.length


	#taking one song from the first half and one song from the second half
	# first half goes until number_songs/2
	# second half starts from number_songs/2 to arr.length
	# adding these songs to a new array 
	new_arr =[]
	first_half=[]
	second_half=[]
	r = 0 
	t = number_songs/2
	while r < t 
		first_half.push(arr[r])
		r += 1
	end 
	
	while t < number_songs
		second_half.push(arr[t])
		t += 1
	end 

	# we have to add songs until the number of songs
	# in new_arr = number_songs
	i = 0
	while new_arr.length < number_songs 
		
		new_arr.push(first_half[i])
		new_arr.push(second_half[i])
		i +=1 
	end
	# now every second song in new_arr is from the second half
	# if we repeat the whole process several times it will be shuffled and mixed
	# shuffle_playlist(new_arr)
	#shuffle_playlist(new_arr)
	#shuffle_playlist(new_arr)
	new_arr.sort_by{rand}
end 

songs = 
	["/Jazz/Monk--Nutty/track08.oggmusic",
	"/Jazz/Monk--London_Collection_1/track05.oggmusic",
	"/Jazz/Monk--Nutty/track13.oggmusic",
	"/Jazz/Monk--Round_Midnight/track02.oggmusic",
	"/Jazz/Monk--Round_Midnight/track14.oggmusic",
	"/Jazz/Monk--Round_Midnight/track15.oggmusic",
	"/Jazz/Monk--Round_Midnight/track08.oggmusic",
	"/Rock/FNM--Who_Cares_A_Lot_2/track02.oggmusic",
	"/Rock/FNM--Who_Cares_A_Lot_2/track08.oggmusic",
	"/Rock/FNM--Who_Cares_A_Lot_1/track02.oggmusic",
	"/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"]

puts shuffle_playlist (songs)





