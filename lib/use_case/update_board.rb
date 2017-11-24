module UseCase
  class UpdateBoard
    def initialize(board)
      @board = board
    end

    def execute(position:, type:)
      board.place(position: position, type: type)
    end

    private

    attr_reader :board
  end
end
