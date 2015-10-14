def music_shuffle_array arr
  numberofChecks = 0
  recursive_shuffle arr, [], numberofChecks
end

def checkSameFolder shuffled_array_lastElement, newElement
  firstItem =  shuffled_array_lastElement.split('/')
  secondItem = newElement.split('/')
  firstItem[-2] == secondItem[-2]
end



def recursive_shuffle unshuffled_array, shuffled_array, numberofChecks
  prng = Random.new
  if unshuffled_array.length == 0
    return shuffled_array
  else
    randomNumber = prng.rand(unshuffled_array.length)
    picked_song = unshuffled_array[randomNumber]
    previous_song = shuffled_array[-1]
    if previous_song != nil
      if !checkSameFolder(picked_song, previous_song) || numberofChecks > unshuffled_array.length
        p numberofChecks #&& numberofChecks <=1
        shuffled_array.push(picked_song)
        unshuffled_array.delete_at(randomNumber)
        numberofChecks = 0
      else
        puts "I' stuck"
        numberofChecks +=1
        p numberofChecks
      end
    else
      shuffled_array.push(picked_song)
      unshuffled_array.delete_at(randomNumber)
      numberofChecks = 0
    end
  end
  recursive_shuffle unshuffled_array, shuffled_array, numberofChecks
end

# shuffled_array_lastElement = 'Anki/User 1/collection.media/rec1398534339.mp3'
# newElement = 'Music/Raspberries - Go All The Way.mp3'
# p shuffled_array_lastElement.split('/')[-2]
# p newElement.split('/')[-2]
# p checkNotSameFolder shuffled_array_lastElement, newElement

# a = %w(a/1 a/2 a/3 a/4 b/1 b/2 b/3 b/4 b/5 b/6 b/7 b/8)
# p a
# p music_shuffle a

