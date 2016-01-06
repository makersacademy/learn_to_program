def sort array
	if array.length <=1
		return array
	else
	middle = array.pop
	less = array.select{|x|x<middle}
	more = array.select{|x|x>=middle}

	sort(less) + [middle] + sort(more)
    end
end