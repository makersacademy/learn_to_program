# your code here
def shuffle arr
  # your code here
  shuffled_array = []
  
 
  while arr.length > 0
  rand_arr_object = rand(arr.length)
  
  selected = 0
  new_array = []
  
  arr.each {|x|
  
  if selected == rand_arr_object
      shuffled_array.push x
  else
      new_array.push x
  end
  selected +=1
      
  }
  
  arr= new_array
end
shuffled_array
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

#-Dir array with ** and *.0gg ---- understand this


