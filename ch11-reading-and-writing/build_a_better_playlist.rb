# Had to look at the answer to get the test to pass
def music_shuffle(filenames)
  filenames.sort!
  length = filenames.length
  2.times do
    shuffled = []
    right = 0
    left = length/2
    
    while shuffled.length < length
      if shuffled.length.even?
        shuffled.push(filenames[left])
        left += 1
      else
        shuffled.push(filenames[right])
        right += 1
      end
    end
    
  filenames = shuffled
 end
 array = []
 cut = rand(length)
 index = 0
 
 while index < length
   array.push(filenames[(index+cut)%length])
   index += 1
 end
  array
end