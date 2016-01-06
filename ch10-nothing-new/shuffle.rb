def shuffle arr
	shuffled = []
  	half_pile = arr.length./(2)
  	arr2 = arr.pop(half_pile)

  	arr.each_index do |a|
  		shuffled << arr[a]
  		shuffled << arr2[a]
  	end
  	shuffled
end

=begin

1. split array in middle
	array.length what if its odd number and rounds down? 
	/ array length then create array 2 with it 

2. take card one from array 1 >> put in new shuffled array
3. take card from array 2 >> put in new shuffled array

4. return shuffled array
=end