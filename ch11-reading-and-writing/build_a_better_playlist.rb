def music_shuffle arr, shuffled=[]
  r = rand(arr.length)
  shuffled << arr[r]
  arr.delete_at(r)
  if arr.length > 0
    shuffle arr, shuffled
  end
  if shuffled.length > 2 #this algorithm needs at least 3 elements to work
    n = 2 #start at index 2, compare with index 1 and if they're both in 
    #the same directory switch switsh index 0 with index 1 
    #(this may cause new adjacencies to be set up and won't crash if (almost) 
    #all files come from the same directory')
    (shuffled.length - 2).times do
      if shuffled[n].split('/')[-2] == shuffled[n - 1].split('/')[-2]
        temp = shuffled[n - 2]
        shuffled[n - 2] = shuffled[n - 1]
        shuffled[n - 1] = temp
      end
    end
end