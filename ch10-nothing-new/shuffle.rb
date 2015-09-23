def shuffle arr
  length = arr.length
  shuffles = length*100

  shuffles.times do
    index = 0
    while index < (length -1)
      n = arr[index]
      nn = arr[index+1]

      shuffle_it = rand(length) < (length/2)

      if shuffle_it
        arr[index] = nn.to_i
        arr[index+1] = n.to_i
      end
      index += 1
    end
  end

  new_arr = arr
  return new_arr
end

#puts shuffle [1,2,3,4,5,6,7,8,9]


=begin
num_array = []
num = ""

puts "Type in as many numbers as you want, one number per line"

num = gets.chomp
while num.length != 0
  num_array.push num
  num = gets.chomp
end

shuffle num_array

num_array.each { |n| puts n}
=end