class Playlist

  def tracks
      Dir['**/*.mp3'].sort_by{ rand }
  end

  def reproduce 
    File.open 'playlist.mp3', 'w' do |f|
      tracks.each do |track|
        f.write track
      end
    end
  end

end