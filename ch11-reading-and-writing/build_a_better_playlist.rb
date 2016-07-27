def music_shuffle filenames
  filenames = 'playlist file to shuffle e.g. /Users/ewansheldon/music/playlists/new_playlist'

  filenames = filenames.split '.mp3'

  filenames.shuffle!  

end
