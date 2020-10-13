require 'Grade_Counter'

RSpec.describe Grade_Counter do 

  describe '#grade_count' do 
    it 'returns Green: 1 when given Green ' do 
      grade_counter = Grade_Counter.new
      expect(grade_counter.count('Green')).to eq('Green: 1')
    end
    it 'returns Green: 2 when given "Green, Green"' do 
      grade_counter = Grade_Counter.new 
      expect(grade_counter.count('Green,Green')).to eq("Green: 2") 
    end 
  end 

end 