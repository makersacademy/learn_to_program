def music_shuffle filenames
  arr = filenames.split("\n")

  a = []
  b = []

  c = 1
  arr.each do |x|
    c % 2 == 0 ? a << x : b << x
    c += 1
  end

shuf = []

until (a == []) && (b == [])
  shuf << a
  shuf << b
end




shuf.compact

end

music_shuffle "this\nis\na test to\n see if this \n program\nactually\nworks"
