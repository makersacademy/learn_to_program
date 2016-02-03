require './projects/learn_to_program/ch10-nothing-new/shuffle.rb'

Dir.chdir('.')

tunes_names = Dir['./**/*.mp3']

shuffle(tunes_names)

File.open 'tunes.m3u', 'w' do |f|
  tunes_names.each do |mp3|
    f.write mp3 + "\n\n"
  end
end
