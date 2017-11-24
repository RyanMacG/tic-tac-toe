require './lib/board'

RSpec.describe Board do
  let(:board) { described_class.new() }

  context 'with no moves placed' do
    it 'should have 9 empty spaces' do
      expect(board.current_state).to eq(['','','','','','','','',''])
    end
  end

  context 'placing a move' do
    before do
      board.place(position: 0, type: 'x')
    end

    it 'should allow placement of an item in a given location' do
      expect(board.current_state).to eq(['X','','','','','','','',''])
    end

    context 'invalid moves' do
      it 'should not allow placement beyond the last location' do
        expect(board.place(position: 9, type: 'x')).to eq(false)
      end

      it 'should not allow placement before the first location' do
        expect(board.place(position: -1, type: 'o')).to eq(false)
      end

      it 'should not allow placement on a position that has been taken' do
        expect(board.place(position: 0, type: 'o')).to eq(false)
      end
    end
  end
end
