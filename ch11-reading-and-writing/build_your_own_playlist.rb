# your code here
def shuffle arr
  shuf = []
  while arr.length > 0
    i = rand(arr.length)
    shuf.push arr[i]
    arr.delete_at(i)
  end
  shuf
end

list = shuffle (Dir["/Users/rajeevhejib/**/*.mp3"])

playlist = ""
while true
  puts
  puts "Enter name of your playlist"
  playlist = gets.chomp
  puts
  print "Your playlist will be \"#{playlist}\". Continue? (Y/y):"
  break if gets.chomp.downcase == "y"
end


File.open playlist, "w" do |flnm|
	list.each do |name|
    puts name
    flnm.write name+"\n"
  end
end
