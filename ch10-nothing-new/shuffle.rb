def shuffle arr
  length = arr.length
  shuffles = length*100

  shuffles.times do
    index = 0
    while index < (length -1)
      n = arr[index]
      nn = arr[index+1]

      shuffle_word = rand(length) < (length/2)

      if shuffle_word
        arr[index] = nn
        arr[index+1] = n
      end
      index += 1
    end
  end
  return arr
end

#=begin
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
#=end