#  This program finds all music files (.mp3, .wav, .aif) 
#  in your chosen directory - 'MUSIC_PATH',
#  and makes a SHUFFLED .m3u playlist.
def shuffle arr
  arr.shuffle!
  half = arr.length / 2
  arr = arr.slice(0, half).shuffle + arr.slice(half, arr.length).shuffle
end

def music_shuffle filenames
	filenames_arr = []
	files_by_dir = {}

	filenames.each do |name|
		dir_name = name.split('/')[0...-1].join('/') #[0...-1] all but last element (/filename.xxx)

		# create a hash, where key is directory name, and value is array of files in that dir..
		files_by_dir[dir_name] ||= []
		files_by_dir[dir_name] << name
	end

	# shuffle files in each directory
	files_by_dir.each { |dir, arr| arr = shuffle(arr) }
	
	new_list = []
	filenames.length.times do |i|
		# take one item from each shuffled directory
		files_by_dir.each do |dir, arr|
			if !arr.empty?
				# and add it to the new list // first or last item for more variety
				new_list.push( (i%2==0) ? arr.shift : arr.pop )
			else
				files_by_dir[dir].clear
			end
		end
	end

	new_list
end

def get_playlist_name
	puts 'What would you like to call this playlist?'
	playlist_name = ''
	until playlist_name != ''
		playlist_name = gets.chomp.strip
		puts 'Please, enter a name' if playlist_name == ''
	end
	playlist_name = playlist_name + '.m3u'
end

def get_file_names path
	file_names = Dir['./**/*.{mp3,wav,aif,aiff,m4a}']

	if file_names.length == 0
		puts "ERROR! Directory '#{path}' is empty!"
		exit
	end
	file_names.sort! # sort alphabetically, as it first adds .mp3, then .wav and so on..
end

def change_dir_to path
	if Dir[path].empty?
		puts "ERROR! Directory '#{path}' not found!"
		exit
	end
	Dir.chdir(path)
end

def make_playlist(playlist_name, files)
	playlist_text = ""
	files.each { |name| playlist_text << name + "\n" }

	File.open playlist_name, 'w' do |f|
	    f.write playlist_text
	end

	puts 
	puts 'Done!'
end

#--------------------------- PROGRAM ---------------------------#
MUSIC_PATH = '/Users/tadasmajeris/Music/GROSIU/- deep : house -'

# Find if given path exists, change working directory to it
change_dir_to MUSIC_PATH

# Find all of the tracks to be moved and shuffle them
file_names = music_shuffle(get_file_names MUSIC_PATH)

# Get user to enter the playlist name
playlist_name = get_playlist_name

# Make the playlist, save it to .m3u
make_playlist(playlist_name, file_names)