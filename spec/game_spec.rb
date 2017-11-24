require './lib/game'

RSpec.describe Game do
  let(:game) { Game.new }
  it 'has players' do
    expect(game.players).to eq(player_1: { marker: 'x' }, player_2: { marker: 'o'})
  end

  context 'before a move has been played' do
    it 'should not have a last_player' do
      expect(game.last_player).to eq(nil)
    end

    it 'should return current player as player_1' do
      expect(game.current_player).to eq(:player_1)
    end
  end
end

# current_player
# last_player
# play_move
# players {  }

# play_move(current_player, position)