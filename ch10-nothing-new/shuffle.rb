def shuffle arr
  out_arr = []

  arr.size.times do
    out_arr.insert(rand(out_arr.size + 1), arr.shift)
  end

  out_arr
end
