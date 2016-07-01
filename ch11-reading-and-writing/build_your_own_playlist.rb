Dir.chdir '/Users/julia'
p myplaylist = Dir['**/*.mp3']
filename = 'myplaylist.m3u'
File.open filename,'w+' do |s|
  s.puts(myplaylist)
end
