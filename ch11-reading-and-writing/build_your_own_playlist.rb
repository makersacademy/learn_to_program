class Playlist
  attr_accessor :playlist_name, :filename
  def initialize(playlist_name)
    @playlist_name = playlist_name
    @filename = "/Users/rebeccaappleyard1984/Desktop/Music/#{playlist_name}.m3u"
    create_playlist(Dir["/Users/rebeccaappleyard1984/Desktop/Music/*.m4a"])
  end

  def create_playlist(tracks)
    File.open filename, 'w' do |f|
      tracks.each do |track|
        f.write track
        f.write "\n"
      end
    end
  end

  def shuffle
    playlist_str = File.read filename
    playlist_arr = playlist_str.split("\n")
    shuffled_arr = []
    while playlist_arr.length > 0
      rand_num = rand(playlist_arr.length)
      shuffled_arr << playlist_arr[rand_num]
      i = playlist_arr.index(playlist_arr[rand_num])
      playlist_arr.delete_at(i)
    end
    create_playlist(shuffled_arr)
  end
end


playlist = Playlist.new("My Songs")
playlist.shuffle

