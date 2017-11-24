module UseCase
  class UpdateBoard
    def initialize(board)
      @board = board
    end

    def execute(position:, type:)
      response = board.place(position: position, type: type)

      if response != 'O' && response != 'X'
        false
      else
        true
      end
    end

    private

    attr_reader :board
  end
end