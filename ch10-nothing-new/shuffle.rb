def shuffle arr
  shuf = []
  while arr.length > 0
  rand_index = rand(arr.length)
  current_index = 0
  new_arr = []
  
  arr.each do |item|
  	if current_index == rand_index
  	  shuf.push item
  	else
  	  new_arr.push item
  	 end
  	 
  	 current_index = current_index + 1
  	 end
  	 
  	 arr = new_arr
  	end
  	
  	shuf
end

puts(shuffle([10,20,30,40,50,60,70,75,82]))