def shuffle arr
  mixer = Random.new
  repeater = arr.size - 1
  mixed = []
  while arr.length > 0 
    m = mixer.rand(0..arr.size - 1)
    mixed << arr.delete_at(m)
  end

 mixed 

end