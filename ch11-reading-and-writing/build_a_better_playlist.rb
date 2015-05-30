def music_shuffle filenames

  split_names = []
  x = ""
  shuf = []
  counter = 1
  flag = 0
  final_shuf = []

  filenames.each do |first|
    split_names << first.split('/')
  end

  x = split_names.sample
  shuf.push x
  split_names.delete(x)

  while split_names.length > 0

    x = split_names.sample

    if x[-2] != shuf[(counter-1),-2]
      shuf.push x
      flag = 0
      counter = counter + 1
      split_names.delete(x)
    elsif flag == 3
      shuf.push.x
      flag = 0
      coutner = counter + 1
      split_names.delete(x)
    else
      flag = flag + 1
    end

  end

  shuf.each do |second|
    final_shuf.push(second.join("/"))
  end
  final_shuf
end

filename = 'playlist.m3u'

music_list = Dir["/Users/michaelarnott/Music/iTunes/**/*.{aac,mp3}"]

shuffled_music = music_shuffle(music_list)

shuffled_music.each do |iterator|
  File.open filename, 'a' do |f|
    f.write iterator + "\n"
  end
end
