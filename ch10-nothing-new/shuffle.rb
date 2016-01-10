
 require "set"
 
 def shuffle *arr
    # your code here
 end 
   arr.length > 1 ? shuffArray = arr[1] : shuffArray = []
 
   origArray = arr[0]
 
   if origArray.length <= 0
 
   	return shuffArray
 
   end
 
   i = rand(origArray.length).to_i
 
   shuffArray << origArray.fetch(i)
 
   origArray.delete_at(i)
 
   shuffle(origArray, shuffArray)
 
 end
 
 puts shuffle(["A","B","C","D","E"])