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
    it 'returns Green: 2, Amber: 1 when give "Green, Green, Amber"' do 
      expect(grade_counter.count('Green,Green,Amber')).to eq("Green: 2\n Amber: 1")
    end 
    it 'returns Green:1, Amber: 1, Red: 1 when given "Green, Amber, Red"' do 
      expect(grade_counter.count('Green,Amber,Red')).to eq("Green: 1\n Amber: 1\n Red: 1")
    end 
  end 

end 