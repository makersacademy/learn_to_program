def shuffle(arr)
    shuffled = [] #Establish empty array for shuffled contents to go into
    while arr.length > 0 #whilst there are things still in the argument, do...
        rand_index = rand(arr.length)
        curr_index = 0
        new_arr = []
        arr.each do |x|
            if curr_index == rand_index
                shuffled.push x
                #whilst the current index is the same as the random one, push an item from the argument into the shuffled array
            else
                new_arr.push x #otherwise, put it in the new array
            end
            curr_index =+ 1
        end
        arr = new_arr #by taking the shuffled index and creating a new array, we end up with a shorter one
    end
    puts shuffled
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'
