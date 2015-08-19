class Array #need to come back to ths
  def shuffle
   random = [] #create an empty array to receive our items
  randomarray =[]
   while self.length >=1  #loop until no items left
	itemid = rand(self.length)
 	random << array[itemid]
 	
 	self.delete_at(itemid)
end
return random
end
end

myarray = ['bear','rabbit','fox']
puts myarray.shuffle