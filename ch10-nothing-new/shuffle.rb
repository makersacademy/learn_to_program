def shuffle arr
  mixed = []
  while arr.length > 0 
    m = rand(0..arr.size - 1)
    mixed << arr.delete_at(m)
  end
  
  mixed 

end
