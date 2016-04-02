def music_shuffle filenames

  #variables
  filenames = filenames.sort
  songs = filenames.length
  tracker = 0
  #create arrays
  to_return = []
  pile_a = []
  pile_b = []
  combinedpiles = []


  #shuffle the deck
  until tracker == songs
    beingshuffled = filenames.pop

    if tracker%2 == 0
      pile_a.push(beingshuffled)
    else
      pile_b.push(beingshuffled)
    end

    tracker += 1
  end

  combinedpiles.push(pile_a).push(pile_b).flatten!
  tracker = 0
  pile_a = []
  pile_b = []


  until tracker == songs
    beingshuffled = combinedpiles.pop

    if tracker%2 == 0
      pile_a.push(beingshuffled)
    else
      pile_b.push(beingshuffled)
    end

    tracker += 1
  end

  combinedpiles.push(pile_a).push(pile_b).flatten!


  #cut the deck
  cut_at = rand(0..songs)
  firsthalf = combinedpiles.slice!(0..cut_at)

  #return
  to_return.push(combinedpiles).push(firsthalf).flatten





end


songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
        'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
