def music_shuffle arr
  array_length = arr.length
  counter = 1
  shuffled = []
  previous_album = ''

  until shuffled.length == array_length
    index = rand(array_length)
    file = arr[index]
    current_album = file.split('/').first
    if !shuffled.include?(file) && (current_album != previous_album)
      shuffled << file
      previous_album = current_album
    end
  end
  shuffled
end