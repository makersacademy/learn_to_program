def is_monotone(heights)
	p heights

	if heights == []
    	return true
    end
  
  heights.each_with_index do |x,i|
    
    if (x > heights[i+1])
    	p x 
    	p heights[i+1]
    	puts false
    else
    	p x 
    	p heights[i+1]
    	puts true
    end
  end
end

my_array = [4,5,4,5]

is = is_monotone my_array
puts is