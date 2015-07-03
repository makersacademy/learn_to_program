#works fine so long as no single album accounts for more than half of the tracks: get lost in recursion trying
#to find a different album for the next track if this is the case...

trackNames = ["music/Jazz/Monk--Nutty/track08.ogg",
              "music/Jazz/Monk--London_Collection_1/track05.ogg",
              "music/Jazz/Monk--Nutty/track13.ogg",
              "music/Jazz/Monk--Round_Midnight/track02.ogg",
              "music/Jazz/Monk--Round_Midnight/track14.ogg",
              "music/Jazz/Monk--Round_Midnight/track15.ogg",
              "music/Jazz/Monk--Round_Midnight/track08.ogg",
              "music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg",
              "music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg",
              "music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg",
              "music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"]

def selectNext arr, prevString
  index = rand(arr.length)
  item = arr[index]
  if prevString==""
    return item
  else
    itemSplit = item.split '/'
    prevStringSplit = prevString.split '/'
    if itemSplit[2]==prevStringSplit[2]
      selectNext arr, prevString
    else
      return item
    end
  end
end

def music_shuffle filenames
  playList=[]
  lastItem = ""
  (filenames.length-1).times do
    track = selectNext filenames, lastItem
    playList.push(track)
    lastItem=track
  end
  #then add the last item
  puts ""
  puts "The final playList:"
  puts playList
end

music_shuffle trackNames