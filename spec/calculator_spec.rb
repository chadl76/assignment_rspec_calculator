# Your code here
require 'calculator.rb'

describe Calculator do

	describe '#add' do
		it 'returns the sum of its arguments' do
      expect(Calculator.new.add(1,2)).to eq(3)
    end

    it 'properly adds two negative numbers' do 
    	expect(Calculator.new.add(-1,-2)).to eq(-3)
    end
  end

  describe '#subtract' do
  	it 'subtracts two positive integers' do
  		expect(Calculator.new.subtract(3,2)).to eq(1)
  	end

  	it 'subtracts two negative integers' do
  		expect(Calculator.new.subtract(-2,-2)).to eq(-2 - -2)
  	end
  end

  describe '#multiply' do
  	it 'multiplies two positve integers' do
  		expect(Calculator.new.multiply(2,2)).to eq(4)
  	end

  	it 'multiplies one postive and one negative integer' do
  		expect(Calculator.new.multiply(-2,2)).to eq(-4)
  	end

  	it 'multiplies two negative numbers' do
  		expect(Calculator.new.multiply(-2,-2)).to eq(4)
  	end
  end

  describe '#divide' do
  	it 'should raise error if dividing by 0' do
  		expect{Calculator.new.divide(4,0)}.to raise_error(ArgumentError)
  	end

  	it 'should divide two integers without remainder' do
  		expect(Calculator.new.divide(8,2)).to eq(4)
  	end
  end

  describe '#pow' do
  	it 'should raise number to its power' do
  		expect(Calculator.new.pow(2,3)).to eq(8)
  	end
  end

  describe '#stringify' do
  	it 'should return answer as a string' do
  		expect(Calculator.new.add(1,1)).to eq(2.to_s)
  	end
  end


end