def dictionary_sort arr
	sorting arr,[]
end
	
def sorting (arrdirty,arrsorted)
		
	if arrdirty.length < 1
		return arrsorted
	end

	mini = arrdirty.pop
	unsorted = []

	arrdirty.each do |a|
		if a.downcase < mini.downcase
			unsorted.push(mini)
			mini = a
		else
			unsorted.push(a)
		end
	end
arrsorted.push(mini)

sorting unsorted,arrsorted
end
puts(dictionary_sort([' can' ,' feel' ,' singing.' ,' like' ,' A' ,' can' ]))
#arrfirst = [ a,b,g,f] its arr and arrdirty
#unsorted = [ ]
#arrsecond = [   ]
#min es g.