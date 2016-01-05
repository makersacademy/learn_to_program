def dictionary_sort arr, res=[]
    return res if arr.empty?
    res << arr.slice!(arr.index(arr.inject {|m, w| m.downcase < w.downcase ? m : w}))
    dictionary_sort(arr, res)
  end
