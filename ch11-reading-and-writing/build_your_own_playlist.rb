# your code here
#x = 1
#newname = "/users/harrywynnwilliams/music/song #{x}.mp3"
x = 1
while x <11 do

file = File.open("/users/harrywynnwilliams/music/song#{x}.mp3", 'w')
x+=1
end
puts Dir['users/harrywynnwilliams/music'] #use array brackets when using DIR
puts Dir.pwd
Dir.chdir("/users/harrywynnwilliams/music")
puts Dir.pwd
tunes = Dir["*.mp3"]
tunes = tunes.shuffle
File.open "playlist", "w" do |f|
tunes.each{|tune| f.write tune+"\n"}
end


#  while x < 10
#   File.open( newname, "w"){
#     |f| f.write ""
# x +=1

# }
# end