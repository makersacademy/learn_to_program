def music_shuffle filenames
  filenames.shuffle!.each do |file|
  	puts file
  end
end


ar = ['music/Jazz/Monk--Nutty/track08.ogg',
'music/Jazz/Monk--London_Collection_1/track05.ogg',
'music/Jazz/Monk--Nutty/track13.ogg',
'music/Jazz/Monk--Round_Midnight/track02.ogg',
'music/Jazz/Monk--Round_Midnight/track14.ogg',
'music/Jazz/Monk--Round_Midnight/track15.ogg',
'music/Jazz/Monk--Round_Midnight/track08.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg',
'music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg']

music_shuffle ar