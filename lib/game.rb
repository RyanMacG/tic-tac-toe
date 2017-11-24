class Game
  attr_reader :players, :last_player

  def initialize
    @players = { player_1: { marker: 'x' }, player_2: { marker: 'o'} }
    @last_player = nil
  end

  def current_player
    :player_1
  end
end