# It works for me, but it doesn't pass the CI test.
# Perhaps I didn't understand the task?
# Also, it's supremely ugly.

def music_shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  seed = rand(unshuffled.length)
  if (seed.is_a? Integer) == false
    return
  else
    selected = 'nothing_selected'
    unshuffled.each do |x|
      unshuffled.index(x) == seed ? selected = unshuffled[seed] : selected = selected
      end
    shuffled << selected
    unshuffled = (unshuffled - [selected])


    # Here's the new function. On a random switch it creates a new seed, takes the 'selected' variable in rec_shuffle, splits the filename, 
    # finds the folder within that filename, and then adds in another random file from the same folder.

    # The switch. 2 out of 3 will return to the top of the loop.
    switch = rand(3)
    switch == 2 ? less_random = true : less_random = false
  
    # A new seed, to mix it up some more. Actually, I'm pretty sure I'm not using this...
    seed = rand(unshuffled.length)

    if less_random == true
      selected_split = selected.split('/')   
      other_files_from_same_folder = []
      another_one =
      
      # pull the second from last index out of the split array and turn it into a string
      folder_to_search = selected_split[-2].to_s
      
      # search through the unshuffled array and make a new array of the songs located in the folder 'folder_to_search'
      unshuffled.each do |y|
        other_files_from_same_folder << (y.to_s) if y.to_s.include?(folder_to_search)
        
          # Randomly select one of the songs in this array, and add it to shuffled array.
          choose_another_one = rand(other_files_from_same_folder.length)
          another_one = other_files_from_same_folder[choose_another_one]
          end
          if another_one.to_s.length > 0 && (another_one.to_s != folder_to_search)
          shuffled << another_one
          unshuffled = (unshuffled - [another_one])
          end
        end
    rec_shuffle unshuffled, shuffled
    end 
  return shuffled
end

# Test array should be in the format ['folder_a/song_a', 'folder_a/song-b', 'folder_b/song_a', 'folder_b/song_b'] etc. 
# puts (music_shuffle ['aa/bbb', 'aa/ccc', 'aa/ddd','AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar'])