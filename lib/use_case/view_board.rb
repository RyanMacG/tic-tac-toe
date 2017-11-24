module UseCase
  class ViewBoard
    def initialize(board)
      @board = board
    end

    def execute 
      board.current_state
    end

    private

    attr_reader :board
  end
end