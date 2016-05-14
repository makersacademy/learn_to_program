describe 'OrangeTree' do
  before do
    require './ch13-creating-new-classes/orange_tree.rb'
  end
  
  context '4 year old tree' do
    
    let(:ot) { OrangeTree.new }
    before {4.times {ot.one_year_passes}}
    
    it 'returns orange count' do
      expect(ot.count_the_oranges).to eq 0
    end
    
    it 'returns height' do
      expect(ot.height).to eq 1.6
    end
    
    it 'returns no orange & does not reduce orage count by 1' do
      expect(ot.pick_an_orange).to eq 'You search every branch, but find no oranges.'
      expect(ot.count_the_oranges).to eq 0
    end
    
    it 'returns height and oranges when one year passes' do
    expect(ot.one_year_passes).to eq 'This year your tree grew to 2.0m tall, and produced 0 oranges.'
    end

  end


 context '16 year old tree' do
    
    let(:ot) { OrangeTree.new }
    before {16.times {ot.one_year_passes}}
    
    it 'returns orange count' do
      expect(ot.count_the_oranges).to eq 71
    end
    
    it 'returns height' do
      expect(ot.height).to eq 6.4
    end
    
    it 'returns orange picked string & reduces orange count by 1' do
      expect(ot.pick_an_orange).to eq 'You pick a juicy, delicious orange!'
      expect(ot.count_the_oranges).to eq 70
    end
    
    
    it 'returns height and oranges when one year passes' do
    expect(ot.one_year_passes).to eq 'This year your tree grew to 6.8m tall, and produced 77 oranges.'
    end

  end
  
   context '25 year old tree' do
    
    let(:ot) { OrangeTree.new }
    before {25.times {ot.one_year_passes}}
    
    it 'returns orange count' do
      expect(ot.count_the_oranges).to eq 125
    end
    
    it 'returns height' do
      expect(ot.height).to eq 10.0
    end
    
    it 'returns orange picked string & reduces orange count by 1' do
      expect(ot.pick_an_orange).to eq 'You pick a juicy, delicious orange!'
      expect(ot.count_the_oranges).to eq 124
    end
    
    
    it 'returns tree is has died' do
    expect(ot.one_year_passes).to eq 'Oh, no! The tree is too old, and has died. :('
    end

  end

   context '30 year old tree' do
    
    let(:ot) { OrangeTree.new }
    before {30.times {ot.one_year_passes}}
    
    it 'returns dead tree no oranges string' do
      expect(ot.count_the_oranges).to eq 'A dead tree has no oranges. :('
    end
    
    it 'returns dead tree height string' do
      expect(ot.height).to eq 'A dead tree is not very tall. :('
    end
    
    it 'returns dead tree has no orange to picked string & cannot reduce orange count' do
      expect(ot.pick_an_orange).to eq 'A dead tree has nothing to pick. :('
      expect(ot.count_the_oranges).to eq 'A dead tree has no oranges. :('
    end
    
    it 'returns tree is still dead string' do
    expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
    end

  end

end