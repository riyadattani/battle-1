require 'player'

describe Player do
  subject(:arthur) { described_class.new('Arthur') }
  subject(:riya) { described_class.new("Riya") }

  it 'returns player name' do
    expect(arthur.name).to eq "Arthur"
  end

  it "returns the players hit points" do
    expect(arthur.hit_points).to eq described_class::DEFAULT_HP
  end

  # describe "#attack" do
  #   it "a player will be attacked and gets damaged" do
  #     expect(riya).to receive(:damage)
  #     arthur.attack(riya)
  #   end
  # end

  describe "#damage" do
    it "should reduce HP by 10 when attack clicked" do
      expect { riya.damage }.to change { riya.hit_points }.by(-10)
    end
  end
end
