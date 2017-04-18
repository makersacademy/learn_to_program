def shuffle arr
  # your code here
  def rand_array size
      array = Array.new
     
     #method to get an array of unique numbers, generated casually, ranging from 0 to the size of the array
     for i in 0...size do
        unique = false
        x = 0
        until unique do
            x = rand(size)
            unique = true if !(array.include? x)
        end
        array << x
      end
      
      array
   end
   
   
   shuffled_positions = rand_array(arr.length)
   
   shuffled_array = Array.new(arr.length)
   
   for i in 0...arr.length do
    shuffled_array[i] = arr[shuffled_positions[i].to_i]
    end
    
    shuffled_array
   
   
   
  
  
      
end