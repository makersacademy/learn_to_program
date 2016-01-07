require 'set'

def shuffle arr
  shuff_arr = []
  while arr.length > 0
  	temp_arr = []
    index = rand(0...(arr.length))
  	
  	arr.each do |x|
  		if x == arr[index]
  			shuff_arr.push(x)
  		else
  			temp_arr.push(x)
  		end
    
    end 
    arr = temp_arr
  end
  shuff_arr
end
