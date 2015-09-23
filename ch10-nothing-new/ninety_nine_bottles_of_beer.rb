load 'english_number.rb'
def nn num
# your code here
	new_num = num
	less_num = new_num - 1
	num_eng = english_number new_num
	less_eng = english_number less_num

	if num == 1
		puts "#{num_eng}  of beer on the wall, #{num_eng} bottle of beer!"
		puts "Take one down, pass it around, no more bottles of beer on the wall!"
	end

	if new_num > 1
		puts "#{num_eng} bottles of beer on the wall, #{num_eng} bottles of beer!"
		puts "Take one down, pass it around, #{less_eng} bottles of beer on the wall!"
		puts ''
		nn less_num
	end
end
nn 555
