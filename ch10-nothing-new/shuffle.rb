def recursive_shuffle unshuffled, shuffled
  shuff_length = unshuffled.length
  if unshuffled == []
    return shuffled
  end  
  #generate a random number from 0 to unshuffled length
  random_index = rand(0..shuff_length -1)
  #iterate over array find the random item and push into shuffled until unshuffled is empty then return 
  #set counter to zero outside loop and use it to get the random item
  item_counter = 0
  unshuffled.each do |item|
    if item_counter == random_index
       item_push = item
       shuffled.push item_push
       #remove item from unshuffled 
       unshuffled.delete_at(random_index)
    end   
    item_counter +=1
  end
  recursive_shuffle unshuffled, shuffled
end    
def shuffle arr
  # your code here
  recursive_shuffle arr, []
end
temp = shuffle ['s','a','b','tipple']
puts temp