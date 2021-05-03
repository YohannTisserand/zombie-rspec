require 'zombie'

describe Zombie do
  before(:each) do
    @zombie = Zombie.new
  end

  let(:zombie) { double(:@zombie, alive?: false, dead?: true) }

  context '#zombie' do
  
    it 'allows a zombie to have a name' do
      allow(zombie).to receive(:name) { 'Shaun' }
      expect(zombie.name).to eq 'Shaun'
    end

    it 'has a brain but not fonctionnal' do
      allow(zombie).to receive(:brain) { 0 }
      expect(zombie.brain).to be < 1
    end

    it 'is not alive' do
      expect(zombie).not_to be_alive
    end

    it 'is dead' do
      expect(zombie).to be_dead
    end
  end
end
