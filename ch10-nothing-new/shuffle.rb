def shuffle arr
	arr.sort_by{rand}
end

puts(shuffle([a,b,c,d,e,f,g,h,i]))