class Board
  def initialize
    @state = ['','','','','','','','','']
  end

  def current_state
    state
  end

  def place(position:, type:)
    return false if place_invalid?(position)

    state[position] = type.upcase
    true
  end

  private

  attr_reader :state

  def place_invalid?(position)
    position > 8 || position < 0 || !state[position].empty?
  end
end
