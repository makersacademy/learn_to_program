def dictionary_sort arr
    return arr if arr.length <= 1

  	pivot = arr.pop
  	less = []
  	greater = []

  	arr.each do |x|
  		if x <= pivot
  			less << x
  		else
  			greater << x
  		end
  	end
	dictionary_sort(less) + [pivot] + dictionary_sort(greater)
end