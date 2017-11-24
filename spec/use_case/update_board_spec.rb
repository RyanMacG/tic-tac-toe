require './lib/use_case/update_board'

RSpec.describe UseCase::UpdateBoard do
  context 'updating a given board' do
    context 'with a tic-tac-toe board' do
      let(:update_board) { described_class.new(Board.new) }

      context 'with a valid move' do
        it 'returns true' do
          expect(update_board.execute(position: 0, type: 'x')).to eq(true)
        end
      end

      context 'with an invalid move' do
        it 'returns false' do
          expect(update_board.execute(position: 10, type: 'x')).to eq(false)
        end
      end
    end
  end
end