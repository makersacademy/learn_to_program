# your code here

File.open("birthday.txt","r") {|file| puts file.read}

bname = Hash.new
lines =File.readlines("birthday.txt")
lines.each do |x,y|
	bname << x,y
end	
p bname
