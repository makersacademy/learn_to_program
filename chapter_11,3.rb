#better playlist 
def shuffle_playlist arr
		number_songs = arr.length
		new_arr =[]
		left_arr =[]
		right_arr =[]
		l = 0 
		r = number_songs
		2.times do
			while new_arr.length < number_songs 
				if new_arr.length%2 == 0 
					new_arr.push(arr[r])
					r += 1 
				else 
					new_arr.push(arr[l])
					l +=1
				end 	
			end
			arr = new_arr 
		end 

end 
#### not complete, come back later! 


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





