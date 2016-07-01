require_relative '/Users/julia/Desktop/test/learn_to_program/ch10-nothing-new/shuffle.rb'


  Dir.chdir '/Users/julia'
  filenames = Dir['**/*.mp3']
  myplaylist = shuffle(filenames)
  filename = 'myplaylist.m3u'
  File.open filename,'w+' do |s|
    s.puts(myplaylist)
  end
