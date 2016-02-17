def dictionary_sort(arr)
	recursive_sort some_array, []
end

def recursive_sort(unsorted,sorted)
	return sorted if unsorted.length == 0
	temp_array = unsorted.map{|x| x.upcase}
	sorted << unsorted.slice!(temp_arr.index(temp_arr.min))
	recursive_sort(unsorted,sorted)
end




#def dictionary_sort array
    #rec_sort(array,[])
#end

#def rec_sort(ary,ary2)
    #return ary2 if ary.length == 0
    #temp_array = ary.map{|x| x.upcase}
    #ary2 << ary.slice!(temp_array.index(temp_array.min))
    #rec_sort(ary,ary2)
#end





