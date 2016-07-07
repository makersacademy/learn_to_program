def sort(unsorted,sorted=[])

return sorted if unsorted==[]			#Return empty array if input is empty

x=0										#Initialize index x as 0
y=1										#Initialize index x as 0

	while y < unsorted.length			#While upper index is inside unsorted array
		if unsorted[x] >= unsorted[y]	#If lower element is before upper element
			y+=1						#Move to next upper element
		else 							
			x=y							#Else save upper element as lower element
			y+=1						#And move to new upper element
		end
	end

sorted.push(unsorted[x])				#At end of iteration smallest element is stored in x which we push to sorted array
unsorted.delete_at(x)					#And deleted from unsorted

unsorted.length==0 ? (return sorted.reverse) : sort(unsorted,sorted)		#If unsorted is empty, return sorted else run again for new unsorted/sorted pair


end