#!/usr/bin/env ruby

#Make a randomiser 
#Logic:
#Music is normally stored by album - we want random chunks of albums, not songs from all over the place.
#Split list of files into n randomly-sized chunks, shuffle each chunk, and then return a shuffled list of the 4 chunks.

def music_shuffle filenames
	list=filenames.sort #order list

	#split list at random point
	split_1= array_split(list).shuffle
	split_2= array_split(split_1[0]).shuffle
	split_3= array_split(split_1[1]).shuffle
	#At this point the array has been randomly cut in 4 places

	return remerge = ((split_2.shuffle)+(split_3.shuffle)).shuffle #merge the 4 splits in a random-ish way

end


def array_split array

	if array.length<2 #error handling for small arrays
		return [[],array]
	end
	max=(array.length-1)
	split_point=rand(0..max)
	
	array1=array[0..split_point]
	array2=array[(split_point+1)..max]

	a.zip(s).flatten.compact

	return[array1, array2]
end


songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

#songs = []

#your_result = ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz', 
#         'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
#his_result = ['foo/bar', 'AAA/zzzz', 'aa/ddd', 
#         'aa/ccc', 'AAA/xxxx', 'aa/bbb', 'AAA/yyyy']

#srand(67809)
puts music_shuffle(songs)


