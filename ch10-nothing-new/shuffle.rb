def shuffle arr

  arrToShuffle = arr
  randomArr = []

  while arrToShuffle.length > 0
    randNum = rand(0..arrToShuffle.length)

    index = 0
    resultsArr = []

    arrToShuffle.each do |x|
      if index == randNum
        randomArr.push x
      else
        resultsArr.push x
      end
    index = index + 1
    end
    arrToShuffle = resultsArr

  end

  return randomArr
end


## myArr = ["hello","goodbye", "dog", "xenophobic", "Ruby","London", "magic"]

## puts(shuffle(myArr))
