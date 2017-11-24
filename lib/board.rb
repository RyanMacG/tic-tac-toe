class Board
  attr_reader :state

  def initialize
    @state = ['','','','','','','','','']
  end

  def current_state
    state
  end

  def place(position:, type:)
    return 'invalid position' if position > 8 || position < 0
    return 'position already taken' unless state[position].empty?

    state[position] = type.upcase
  end
end