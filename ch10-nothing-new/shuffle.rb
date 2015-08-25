def shuffle (arr)
  if arr.length > 0
    arr.sort {|a, b| rand <=> rand}
  else 
    return arr
  end
end