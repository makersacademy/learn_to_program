def music_shuffle filenames
  recursive_shuffle filenames, ["fake/file/for/first"]
end

#method checks album names and doesnt allow any 2 songs from the same album to follow each other

def recursive_shuffle unsort_arr, sort_arr
 x = rand(unsort_arr.size)
 unless unsort_arr[x].split("/")[2] == sort_arr[-1].split("/")[2]
 	sort_arr << unsort_arr[x]
 	unsort_arr.delete_at(x)
 end
 return sort_arr[1..sort_arr.size] if unsort_arr.size < 1
 recursive_shuffle(unsort_arr,sort_arr)
end


music = ["music/Jazz/Monk--Nutty/track08.ogg",
"music/Jazz/Monk--London_Collection_1/track05.ogg",
"music/Jazz/Monk--Nutty/track13.ogg",
"music/Jazz/Monk--Round_Midnight/track02.ogg",
"music/Jazz/Monk--Round_Midnight/track14.ogg",
"music/Jazz/Monk--Round_Daytime/track15.ogg",
"music/Jazz/Monk--Round_Midnight/track08.ogg",
"music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg",
"music/Rock/FNM--Who_Cares_A_Lot_3/track08.ogg",
"music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg",
"music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"]

music_shuffle(music)