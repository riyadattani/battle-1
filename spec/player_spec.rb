require 'player'

describe Player do
  subject(:player) { described_class.new('Arthur') }
  it 'returns player name' do
    expect(subject.name).to eq "Arthur"
  end
end
