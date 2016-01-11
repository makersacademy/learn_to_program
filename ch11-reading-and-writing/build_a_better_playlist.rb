puts "Who's music would you like shuffled?"
artist_to_shuffle = gets.chomp.split.map(&:capitalize).join(' ')

Dir.chdir "/home/matthew/Documents/Music/#{artist_to_shuffle}"

songs_to_shuffle = Dir['*.mp3']

def music_shuffle songs_to_shuffle
  filenames = songs_to_shuffle.sort
  length = filenames.length

  2.times do
    left_pile  = 0
    right_pile = length/2
    shuffle = []

    while shuffle.length < length
      if shuffle.length % 2 == 0
        shuffle.push(filenames[right_pile])
        right_pile = right_pile + 1
      else
        shuffle.push(filenames[left_pile])
        left_pile = left_pile + 1
      end
    end
    filenames = shuffle
  end

  array = []
  cut   = rand(length)
  index = 0

  while index < length
    array.push(filenames[(index + cut) % length])
    index = index + 1
  end

  array
end