def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle ary, shuffled
  if ary == []
    return ary
  end
  i = rand(0...ary.length)
  shuffled.insert(0, ary[i])
  # puts "adding #{ary[i]} in position #{i2}"
  ary.delete_at(i)
  rec_shuffle ary, shuffled
  shuffled
end
