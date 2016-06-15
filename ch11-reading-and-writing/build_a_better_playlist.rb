def music_shuffle filenames
  a = filenames.split("\n")

count = 1
b =  a.inject([]) do |result, element|
    result << element if count % 2 == 0
    count = count + 1
    result
  end

puts a
puts "blank"
puts b

end

music_shuffle "this\nis\na test to\n see if this \n program\nactually\nworks"
