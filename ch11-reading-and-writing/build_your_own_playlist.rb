
Dir.chdir 'C:\Users\Public\Music\Sample Music'

music_files = Dir["*.mp3"].shuffle

puts music_files


fileName = "playlist01.m3u"


File.open fileName, 'w' do |f|
	music_files.each do |i|
	f.write i+"\n"	
	end
end
