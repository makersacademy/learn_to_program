def dictionary_sort array
	if array.length <=1
		return array
	else
	middle = array.pop
	less = array.select{|x|x.downcase<middle.downcase}
	more = array.select{|x|x.downcase>=middle.downcase}

	dictionary_sort(less) + [middle] + dictionary_sort(more)
    end
end