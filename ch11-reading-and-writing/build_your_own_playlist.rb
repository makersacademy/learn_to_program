require '../ch10-nothing-new/shuffle.rb'

puts "Scanning your system for mp3 files. This might take a while."

music_files = Dir['/Users/Aru/**/*.mp3']

puts "Found #{music_files.length} music files."

answer = ''
while (answer != 'yes' and answer != 'no')
  puts "Would you like to create a playlist?"
  answer = gets.chomp.downcase
end

if answer == 'no'
  puts "Bye."
  exit
end

puts "Enter the name of the playlist: "

pl_name = gets.chomp
pl_name = pl_name.downcase.sub(' ', '_') + '.m3u'

answer = ''
while (answer != 'yes' and answer != 'no')
  puts "Would you like to shuffle the playlist? yes/no"
  answer = gets.chomp.downcase
end

if answer == 'yes'
  music_files = shuffle(music_files)
end

File.open pl_name, 'w' do |f|
  music_files.each {|name| f.write(name + "\n")}
end

puts "Done! file '#{pl_name}' created!"