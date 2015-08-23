#!/usr/bin/env ruby

#NB, I'm aware this dosen't pass the rspec tests, but as far as I can tell it
#applies similar logic to the CP solutions... feedback welcome

def music_shuffle filenames
	list=filenames.sort #order list
	5.times do
		list = shuffle(list)
	end
	return array_split(list)
end


def shuffle(songs)
	array=songs.each_slice(((songs.length+1)/2)).to_a #cut array in two and return array of arrays
	return  array[0].zip(array[1]).flatten.compact #interleave the arrays
end


def array_split array

	if array.length<2 #handle small arrays that can't be split
		return [[],array].flatten.compact
	end
	max=(array.length-1)
	split_point=rand(0..max)
	array1=array[0..split_point]
	array2=array[(split_point+1)..max]
	return[array2, array1].flatten.compact
end


songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']


puts music_shuffle(songs)


