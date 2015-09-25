def dictionary_sort(list) 													# taking each index and comparing it to each index. 
  list.each_index { |first| 									# and switching if greater
	list.each_index { |second| 
      if list[first].downcase < list[second].downcase
        list[first], list[second] = list[second], list[first]
      end
    print list
    } 
  }
end
