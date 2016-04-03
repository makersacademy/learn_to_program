def music_shuffle filenames
	2.times do 
		filenames.shuffle!
	end
	filenames
end



# Build a better playlist. After listening to playlists for a while, 
# you might start to find that a purely random shuffle just doesn’t 
# quite seem...mixed up enough. (Random and mixed up are not at all the 
# 	same thing. Random is totally clumpy.) For example, here’s an excerpt 
# from a playlist I made a while back of Thelonius Monk and Faith No More:
#   music/Jazz/Monk--Nutty/track08.ogg
#   music/Jazz/Monk--London_Collection_1/track05.ogg
#   music/Jazz/Monk--Nutty/track13.ogg
#   music/Jazz/Monk--Round_Midnight/track02.ogg
#   music/Jazz/Monk--Round_Midnight/track14.ogg
#   music/Jazz/Monk--Round_Midnight/track15.ogg
#   music/Jazz/Monk--Round_Midnight/track08.ogg
#   music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg
#   music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg
#   music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg
#   music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg
# Hey! I asked for random! Well, that’s exactly what I got...but I wanted 
# mixed up. So, here’s the grand challenge: instead of using your old shuffle, 
# write a new music_shuffle method. It should take an array of filenames (like 
# 	those listed previously) and mix them up good and proper.
# You’ll probably need to use the split method for strings. It returns an array 
# of chopped-up pieces of the original string, split where you specify, like this:
#   awooga = 'this/is/not/a/daffodil'.split '/'
#   puts awooga
# Mix it up as best you can!