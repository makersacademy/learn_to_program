
filenames = []

Dir.foreach('/Users/Hanna/Desktop/Files/Music') do |file|
  filenames << file
end

def music_shuffle(filenames)
  shuffle_rec(filenames, [])
end

def shuffle_rec(unshuffled, shuffled)
  if unshuffled.length == 0
    return unshuffled
  end

  random_index = rand(unshuffled.length)
  random_el = unshuffled[random_index]

  shuffled << random_el
  unshuffled.delete_at(random_index)

  shuffle_rec(unshuffled, shuffled)

  return shuffled
end

