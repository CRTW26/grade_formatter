require 'Grade_Counter'

RSpec.describe Grade_Counter do 

  let(:grade_counter) { Grade_Counter.new }

  describe '#grade_count' do 
    it 'returns Green: 1 when given Green ' do 
      expect(grade_counter.count('Green')).to eq('Green: 1')
    end
    it 'returns Green: 2 when given "Green, Green"' do 
      expect(grade_counter.count('Green,Green')).to eq("Green: 2") 
    end 
  end 

end 