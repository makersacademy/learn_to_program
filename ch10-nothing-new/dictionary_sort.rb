  def dictionary_sort arr
    recursive(arr, [])
    #non_recursive (arr)
  end

  def recursive(arr, output)
    return output if arr.length == 0
      first = arr.first
      pos = 0
      arr.each_with_index do |x, i|
        if x.downcase < first.downcase
          first = x
          pos = i
        end
      end
      arr.delete_at(pos)
      output << first
      recursive(arr, output)
  end


=begin
sentence = "variable can hold only one item at a time. Arrays can hold multiple items. These items are called elements of the array. Arrays can hold objects of any data type. Each element can be referred to by an index. Arrays are zero based. The index of the first element is zero."
#sentence = "This is a this test Android"
words = sentence.split
p dictionary_sort(words)
=end
