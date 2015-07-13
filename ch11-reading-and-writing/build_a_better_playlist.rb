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

#define a method to select the next track for the playlist, whilst ensuring that
# no two consecutive tracks are taken from the same album
def selectNext arr, prevString
  index = rand(arr.length)
  item = arr[index]
  # If dealing with the first item for the playlist, we don't care what album
  #it's from; just return the track & move onto the next
  if prevString==""
    return item
  else
    # Now we have to consider whether the next track is from the same album
    # as the previous selection; if it is, call the function recursively
    # to generate new suggestions until we get the answer we want...
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
  # create an empty array to hold the playlist
  playList=[]
  #Initialise the string for telling the method what the last selected item was
  lastItem = ""
  # We want to include all tracks in our list, so integer.times do works nicely
  (filenames.length-1).times do
    #Select the next track for the playlist
    track = selectNext filenames, lastItem
    #Add it to the end of the playlist
    playList.push(track)
    #update the string telling the programme what the last selection was
    lastItem=track
  end
  #then add the last item
  puts ""
  puts "The final playList:"
  puts playList
end

music_shuffle trackNames