require 'Grade_Counter'

RSpec.describe Grade_Counter do 

  let(:grade_counter) { Grade_Counter.new }

  describe 'instantiating new Grade_Counter' do 
    it 'has green grade count of 0 ' do 
    expect(grade_counter.green_count).to eq(0)
    end 
  end 

  describe '#count' do 
    it 'returns Green: 1 when given Green' do 
      grade_counter.count('Green')
      expect(grade_counter.green_count).to eq(1)
    end 
  end 

  describe '#output' do 
    it 'returns Green: 1 when given Green ' do 
      grade_counter.count('Green')
      expect(grade_counter.output).to eq("Green: 1\n")
    end
    it 'returns Green: 2 when given "Green, Green"' do
      grade_counter.count('Green,Green') 
      expect(grade_counter.output).to eq("Green: 2\n") 
    end 
    it 'returns Green: 2, Amber: 1 when give "Green, Green, Amber"' do 
      grade_counter.count('Green,Green,Amber')
      expect(grade_counter.output).to eq("Green: 2\nAmber: 1\n")
    end 
    it 'returns Green:1, Amber: 1, Red: 1 when given "Green, Amber, Red"' do 
      grade_counter.count('Green,Amber,Red')
      expect(grade_counter.output).to eq("Green: 1\nAmber: 1\nRed: 1\n")
    end 
    it 'returns Green: 1, Amber:1, Red: 1, Uncounted: 1 when give Green,Amber, Red, Gren' do 
      grade_counter.count('Green,Amber,Red,Gren')
      expect(grade_counter.output).to eq("Green: 1\nAmber: 1\nRed: 1\nUncounted: 1")
    end 
  end 

  context 'when input contains capitalized and non-capitialized words' do 
    it 'returns Green when given green' do 
      expect(grade_counter.format_grades('green')).to eq(['Green'])
    end 
    it 'returns Green: 1 when given green' do 
      grade_counter.count('green')
      expect(grade_counter.output).to eq("Green: 1\n")
    end 
  end 

end 