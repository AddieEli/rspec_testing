cstrequire 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def clear(number)
    return number * 0
  end

end 



RSpec.describe Calculator do  
  describe '#add' do   
    it 'should return the sum of two numbers' do
       calculator = Calculator.new #this is where you write the test
          expect(calculator.add(1, 3)).to eq(4)
    end
  end  

    describe '#subtract' do
      it 'should return the product of two numbers' do
        calculator = Calculator.new
        expect(calculator.subtract(6, 3)).to eq(3)
      end
    end

    describe '#multiply' do
      it 'should multiply the numbers' do 
        calculator = Calculator.new
        expect(calculator.multiply(5, 5)).to eq(25)
      end
    end

    describe '#divide' do
      it 'should return the quotient of two numbers' do
        calculator = Calculator.new
        expect(calculator.divide(21, 7)).to eq(3)
      end
    end

  describe '#square' do 
    it 'should provide the product of one number multiplied by itself' do
      calculator = Calculator.new
      expect(calculator.square(3)).to eq(9)
    end
  end

  describe '#power' do
    it 'should return the product of the first number on itself the second number of times' do
    calculator = Calculator.new
    expect(calculator.power(2, 2)).to eq(4)
    end
  end

  describe '#clear' do
    it 'should return zero' do
      calculator = Calculator.new
      expect(calculator.clear(4)).to eq(0)
    end
  end

end 

# top line calls the class
# "describe #function calls out the function we'er using"
# "it" and "should" those strings always begin with should and describe and it are methods
# do is written for each test
# to test in terminal you write "rspec filename.rb"
