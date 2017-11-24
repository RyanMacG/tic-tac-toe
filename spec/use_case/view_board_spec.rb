require './lib/use_case/view_board'

RSpec.describe UseCase::ViewBoard do
  context 'viewing a given board' do
    context 'with a tic-tac-toe board' do
      let(:viewed_board) { described_class.new(Board.new) }
      it 'should return the current state' do
        expect(viewed_board.execute).to eq(['','','','','','','','',''])
      end
    end
  end
end