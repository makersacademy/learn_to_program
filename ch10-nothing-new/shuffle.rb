def shuffle arr
everyday_im_shuffling = []

arr.length.times do
	random_ind = rand(arr.length)
	everyday_im_shuffling<< arr[random_ind]
	arr.delete_at(random_ind)
end

everyday_im_shuffling 

end 
