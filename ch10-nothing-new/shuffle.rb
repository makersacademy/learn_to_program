def shuffle arr
	arr.sort_by{rand}
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))