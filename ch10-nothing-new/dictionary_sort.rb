def dictionary_sort array

if array.length <=1
  return array
else
  test = array.pop
  less=[]
  greater=[]

  array.each do |x|
    if x.downcase<=test.downcase
      less<<x
    else
      greater<<x
    end
  end

  return dictionary_sort(less) + [test] + dictionary_sort(greater)
end
end

puts dictionary_sort(['this','is','just','A','Test'])
