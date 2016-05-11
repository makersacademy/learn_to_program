def shuffle arr
  shuffled = []

  arr.length.times do
    so_Randumm = rand(arr.length)

    shuffled << arr[so_Randumm]
    arr.delete_at(so_Randumm)
  end

  shuffled
end
