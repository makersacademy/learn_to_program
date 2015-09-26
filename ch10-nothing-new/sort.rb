def sort (list)
	list.each_index { |i|
		list.each_index { |j| 
			if list[i] < list[j]
				list[i], list[j] = list[j], list[i]
			end	
		}
	}
	print list
end