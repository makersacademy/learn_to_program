def shuffle arr
  repeater = arr.size - 1
  mixed = []
  while arr.length > 0 
    m = mixer.rand(0..repeater)
    mixed << arr.delete_at(m)
  end

 mixed 

end
