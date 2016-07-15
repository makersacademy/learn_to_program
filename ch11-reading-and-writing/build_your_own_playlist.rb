
def shuffle(arr)
  arr.shuffle
end

all_m4as = shuffle(Dir['/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/01_Tiny_Monsters.m4a',
                       '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/02_Green_Valley.m4a',
                       '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/03_Monsoons.m4a',
                       '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/04_Telling_Ghosts.m4a',
                       '/Users/prashantmathias/music/Puscifer/Conditions_of_My_Parole/05_Horizons.m4a'])

File.open 'playlist.m3u.txt', 'w' do |f|
  all_m4as.each do |m4a|
    f.write m4a+"\n"
  end
end

puts 'Done!'
