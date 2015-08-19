def shuffle array
  random = [] #create an empty array to receive our items
  
while array.length >=1  #loop until no items left
	itemid = rand(array.length)
 	random << array[itemid]
 	
 	array.delete_at(itemid)
    
 
end
return random
end

