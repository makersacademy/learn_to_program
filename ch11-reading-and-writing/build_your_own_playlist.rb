def shuffle array
    shuffled_arr= []

    while array.length > 0
        random= array.sample
        arr= []
        array.each {|x|
            x == random ? shuffled_arr<< x : arr<< x
        }
        array= arr
    end
    shuffled_arr
end

all_files= shuffle(Dir['/Users/kass/Desktop/TmpMusic/**/*.mp3'])
File.open 'shuffled_playlist.m3u', 'w' do |file|
    all_files.each do |x|
        f.write x+"\n"
    end
end