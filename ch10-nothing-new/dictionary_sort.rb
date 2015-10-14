def dictionary_sort arr
  sorting = true
  length = arr.length

  while sorting
    sorting = false
    index = 0

    while index < (length -1)
      word_n = arr[index]
      word_nn = arr[index+1]

      if word_nn.to_s.downcase < word_n.to_s.downcase
        arr[index] = word_nn
        arr[index+1] = word_n
        sorting = true
      end
      index += 1
    end
  end
  return arr
end

=begin
word_array = []
word = ""

puts "Type in as many words as you want, one word per line"

word = gets.chomp
while word.length != 0
  word_array.push word
  word = gets.chomp
end

dictionary_sort word_array

word_array.each { |w| puts w}
=end
