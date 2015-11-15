def music_shuffle (songs)
  def shuffle arr
    arr.each_with_index do |item, index|
      arr.insert(rand(arr.length), arr.delete_at(index))
    end
  end

  Dir.chdir('.')

  tunes_names = Dir['./**/*.mp3']

  shuffle(tunes_names)

  File.open 'tunes.m3u', 'w' do |f|
    tunes_names.each do |mp3|
      f.write mp3 + "\n\n"
    end
  end
end
