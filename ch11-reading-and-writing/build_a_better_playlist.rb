Dir.chdir('/users/harrywynnwilliams/music/')
  p Dir.pwd
filenames = Dir["*.mp3"]
def music_shuffle filenames
  size = filenames.length
    for i in 0..size
      r=rand(size-i)+i
      filenames[r], filenames[i] = filenames[i], filenames[r]
      end
      filenames
    end



p music_shuffle filenames