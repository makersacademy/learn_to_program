# your code here
require './Projects/learn_to_program/ch10-nothing-new/shuffle.rb'

Dir.chdir('.')

songs = Dir['./**/*.mp3']

shuffle(songs)

File.open 'tunes.m3u', 'w' { |f|
  songs.each { |mp3|
    f.write mp3 + "\n\n"
  }
}