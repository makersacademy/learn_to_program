		Dir.chdir 'C:\Users\Public\Music\Sample Music'
		all_music = Dir['C:\Users\Public\Music\Sample Music\*.mp3']

		File.open "playlist.m3u", 'w' do |a|
			all_music.each do |b|
				a.write b + "\n"
			end
		end

		playlist.sort_by ( rand )

