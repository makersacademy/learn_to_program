def sort arr
  for i in 0..arr.size-1
    for j in 0..arr.size-1
      result = swap(j,i,arr)
    end
  end
  result
end

def swap(idx_a,idx_b, ary)
  if ary[idx_a] > ary[idx_b]
    temp = ary[idx_a]
    ary[idx_a] = ary[idx_b]
    ary[idx_b] = temp
  end
  ary
end