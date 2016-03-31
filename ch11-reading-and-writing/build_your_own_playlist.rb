# your code here

def shuffle_manual arr
  suffled = []
  while arr.size > 0
    msecs = ((Time.now.to_f - Time.now.to_i)*10000).to_i
    index_random = msecs % arr.size
    index = 0
    temp = []
    arr.each do |e|
      suffled << e if index == index_random
      temp << e if index != index_random
      index += 1
    end
    arr = temp
  end
  suffled
end

names = Dir['/media/sergio/Windows8_OS/Users/sergio/Music/Bajado/test/*.mp3']
names = shuffle_manual names

filename = 'playlist.m3u'

File.open filename, 'w' do |f|
  names.each {|song| f.write song + "\n"}
end

puts names



