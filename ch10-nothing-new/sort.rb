def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase} 
  more = arr.select{|x| x.downcase >= middle.downcase}

  sort(less) + [middle] + sort(more)
end
def agnes i
	return i if i==1
	puts agnes(i-1)	
end
agnes 5