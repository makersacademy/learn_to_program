def dictionary_sort arr 
	arr.min_by(arr.size){|x| x.downcase}.to_a.each { |e| arr.delete_at(arr.index(e)) }
end
