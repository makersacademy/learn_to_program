def sort array

if array.length <=1
	return array
else

	test = array.pop
	less=[]
	greater=[]

	array.each do |x|
		if x <=test
			less<<x
		else
			greater<<x
		end
	end

	return sort(less) + [test] + sort(greater)
end
end

puts sort(['this','is','just','a','test'])
