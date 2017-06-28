require 'rspec'
class ChangeMachine

def change(cents)
 array = []
  if cents > 5 
    array << 5
    array << cents % 5
  elsif cents == 5
    array << 5
  elsif
    cents.times do
      array << 1
    end  
  end
 return array
end 

end

RSpec.describe ChangeMachine do 
  describe '#change' do 
    it 'should return [1] when given 1' do 
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] when given 2' do 
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end
    it 'should return [1, 1, 1] when given 3' do 
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1, 1])
    end
    it 'should return [5] when given 5' do 
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
     it 'should return [5,1] when given 6' do 
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5,1])
    end
  end 

end