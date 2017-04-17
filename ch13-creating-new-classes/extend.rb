class Array #need to come back to ths
  def shuffle
   random = [] #create an empty array to receive our items
  
while self.length >=1  #loop until no items left
	itemid = rand(self.length)
 	random << self[itemid]
 	
 	self.delete_at(itemid)
  end  
  random.to_s
end
end



class Integer
  def fact
    self <= 1 ? 1 : self * (self - 1).fact
  end
  def roman
 
  result = '' #creates the string to output
  result = result + "M" * (self/1000) # how many thousands
   result = result + "D" * (self % 1000 /500) #how many 500 s
  
   result = result + "C" * (self % 500 /100)
  

   result = result + "L" * (self % 100 /50)
  
   result = result + "X" * (self % 50 /10)
   result = result + "V" * (self % 10 /5)
   result = result + "I" * (self % 5)
   result
end
end
puts [1,2,3,4,5].shuffle
puts 7.fact.roman.split('').shuffle
puts 100.roman

