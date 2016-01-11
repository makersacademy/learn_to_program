#!usr/local/bin ruby

LOC_HOME = Dir.home

Dir.chdir("#{LOC_HOME}/Music")


def shuffle arr, res=[]
  return res if arr.empty?
  res << arr.slice!(rand(arr.size))
  res.reverse
  shuffle arr, res
end

 p list = Dir["**/*.{mp3,m4a}"].reject {|d| d[/iTunes/]}

 p shuff_list = shuffle(list)

  File.open "#{LOC_HOME}/Music/play_list.m3u", "w" do |f|
    f.write shuff_list.join("\n")
  end



