#!/usr/bin/env ruby

array=[]
input = ' '

while input != ''
	input = gets.chomp
	array.push input
end

array.pop #remove \n from the end of the array
puts array.sort

