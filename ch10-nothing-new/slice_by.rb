def slice_by num, slice
	
  len = num.to_s.length
	
  if len % slice != 0
    nu = slice
    
	while nu < len
	  nu += slice 
	end
    nu = nu -len
    
    if slice < len
	  t = len - slice
	  s = slice - t if slice > t
	  s = nu if slice < t
	  size = s
	end
	
	size = slice - len if slice > len
	padding = '0' * (size)
	padded = padding + num.to_s
	padded.length.to_s + ' ' + padded
	
  else
	padded = num.to_s
  end

  arr = padded.split('')
  arr.each_slice(slice).to_a
 
end