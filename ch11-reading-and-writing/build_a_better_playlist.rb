def music_shuffle filenames
  a = filenames.split("\n")

  count = 0

  b =  a.inject([]) do |result, element|
      result << element if count % 2 == 0
      count = count + 1
      result
    end

  c = b.inject([]) {|result, element| result.insert(rand(20), element)}

  a.inject(c) {|result, element| result.insert(rand(20), element)}


  c.uniq.compact.join("\n")
end

puts music_shuffle "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15"
