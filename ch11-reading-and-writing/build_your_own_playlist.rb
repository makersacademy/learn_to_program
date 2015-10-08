# I admit, I went really over the top with this one,
# but I was having too much fun learning how this all worked to stop.

# Location of the music files
puts "Where are your music files stored? Full path please (add wildcards if necessary):"
print "> "
music_location = "#{gets.chomp}"

# Creating new class, 'Codec', and the required Class methods.
class Codec

  def initialize(file_extension, resolution)
    @file_extension = file_extension
    @resolution = resolution
  end

  def file_extension
  	@file_extension
  end

  def resolution
  	@resolution
  end

  def Codec.check_file_extensions
  	results = ''
    ObjectSpace.each_object(self) do |i|
    results << (i.file_extension)+"/"
  	end
    return results
  end

end


# Available codecs (usually I suppose these would be contained in a separate file)
flac = Codec.new('.flac', 'lossless')  
mp3  = Codec.new('.mp3',  'lossy')
wav  = Codec.new('.wav',  'lossless')
wma  = Codec.new('.wma',  'lossy')
m4a  = Codec.new('.m4a',  'lossy')


# Reporting to the terminal
puts '----------'
puts ''
puts 'Some general information:'
puts "FLAC class is: #{flac.class}"
puts "FLAC file_extension is: #{flac.file_extension}"
puts "FLAC resolution is: #{flac.resolution}"
puts 'Available codecs are: ' + (Codec.check_file_extensions)
puts '----------'


# create an array of the various codec file types from the data produced by Codec.check_file_extensions
def create_available_file_types_array file_types_string
  file_types_string.split('/')
end

def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  seed = rand(unshuffled.length)
  if (seed.is_a? Integer) == false
    return
  else
    selected = 'nothing_selected'
    unshuffled.each do |x|
      unshuffled.index(x) == seed ? selected = unshuffled[seed] : selected = selected
      end
    shuffled << selected
    unshuffled = (unshuffled - [selected])
    rec_shuffle unshuffled, shuffled
  end
  return shuffled
end

# search for files and add them to an array, then create an empty array used to store only the audio files.
def create_playlist music_location, shuffle_playlist
  files_array = Dir["#{music_location}/*"]
  if shuffle_playlist == 'y' 
  	files_array = shuffle(files_array)
  end
  audio_files = []

# Name the m3u file
  puts 'What should this playlist be called?'
  print '> '
  playlist_name = "#{gets.chomp}.m3u"

# Find files of a certain type. Check the file extension against all avaiable file_extension
# variables available in all Codec objects.
  available_file_types_array = create_available_file_types_array(Codec.check_file_extensions)
  available_file_types_array.each do |i|
   	files_array.each do |filename|

 # Storing an audio_files array that we can print to terminal.
   	  audio_files << filename if (i == File.extname(filename))
 
 # Create/open the playlist file, and write the file paths to it.
      File.open playlist_name, 'a' do |f|
        f.write "#{filename}\n" if (i == File.extname(filename))
      end
    end

  end

# Reporting to the terminal
puts ''
puts '2: A series of printed filenames of only audio files (as determined by the available codecs)'
puts audio_files
puts ''
puts '------------'
puts ''
puts '3: An array of all the files and directories found, including those with invalid file extensions.'
puts files_array
puts ''

end

# Make it all happen.
shuffle_playlist =
if shuffle_playlist == ('y' || 'n') 
  create_playlist(music_location, shuffle_playlist)
else 
  puts 'Shuffle playlist y/n?'
  print '> '
  shuffle_playlist = gets.chomp
  create_playlist(music_location, shuffle_playlist)
end