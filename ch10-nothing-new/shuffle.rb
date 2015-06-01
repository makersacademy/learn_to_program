def shuffle arr
  shuffled = arr
  pack_length = arr.length
  pack_length.times do |cut_point|
    hand_one = shuffled[0...cut_point]
    hand_two = shuffled[cut_point..-1]
    shuffled = []
    pack_length.times do |index|
      if hand_one.length > index
        shuffled << hand_one[index]
      end
      if hand_two.length > index
        shuffled << hand_two[index]
      end
    end
  end
  shuffled
end