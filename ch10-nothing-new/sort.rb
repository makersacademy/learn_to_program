def sort arr
	sorting arr,[]
end
	
def sorting (arrdirty,arrsorted)
		
	if arrdirty.length < 1
		return arrsorted
	end

	mini = arrdirty.pop
	unsorted = []

	arrdirty.each do |a|
		if a < mini
			unsorted.push(mini)
			mini = a
		else
			unsorted.push(a)
		end
	end
arrsorted.push(mini)

sorting unsorted,arrsorted # your code here
end