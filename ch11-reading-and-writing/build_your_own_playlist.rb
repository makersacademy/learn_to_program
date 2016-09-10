# your code here
def shuffle arr
	arr.sort_by{rand}
	end

  all_m4a= shuffle(Dir["/Users/briankaty1/Desktop/MakersWeek2/Good\ Tracks/*.m4a"])
  File.open 'playlist.m4a', 'w' do |f|
    all_m4a.each do |m4a|
      f.write m4a+ "\n"
    end
  end
