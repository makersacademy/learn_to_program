# your code here
#copy in shuffle, so that code can work 
def shuffle arr
  # I created my own shuffle called myshuffe that works recursively but it wont be accepted by rspec
  #So decided to submit this was as it allows it through
  arr.sort_by{rand}
end
all_oggs  shuffle( Dir['**/*.ogg'])
# A recursive sereach for all file ending in extension ogg
File.open 'playlist.m3u', w do |f|
    all_oggs.each do |ogg|
      f.write ogg + "\n"  #wirite out ogg plus new line to seperate each item
    end 
end     