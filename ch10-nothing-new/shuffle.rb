def shuffle arr
  # your code here
  rec_shuffle(arr, [])
end


def rec_shuffle unshuffled, shuffled
    
    if  unshuffled.length == 0
        return shuffled
    end

    s = []
    size = unshuffled.length
    v = rand(size)
    rv = unshuffled[v]

    unshuffled.each do |f|
    	if f == rv
    		shuffled.push f
    	else
    		s.push f
    	end
    end

    rec_shuffle(s, shuffled)
end

puts shuffle([1,2,3,4,5])