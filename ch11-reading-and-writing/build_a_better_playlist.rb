def playlist_shuffle filenames
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

def music_shuffle paths

  count = 0
  until count == 10
  paths = playlist_shuffle paths
  count += 1
end
paths
end
