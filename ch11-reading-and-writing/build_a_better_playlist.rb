def music_shuffle(playlist)
    shuffled = Array.new
    music = playlist.shuffle
    until music == [] do
    x = music.pop
    shuffled.push(x)
    end
    return shuffled
end