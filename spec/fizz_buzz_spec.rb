# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do
  describe 'a number divisible by 3' do
    # First include 15 and 30
    [3, 6, 9, 12, 18, 21, 24, 27].each do |number|
      it "#{number} should give fizz" do
        expect(subject.decide(number)).to eq 'fizz'
      end
    end
  end

  describe 'a number divisible by 5' do
    [5, 10, 20, 25, 35, 40].each do |number|
      it "#{number} gives buzz" do
        expect(subject.decide(number)).to eq 'buzz'
      end
    end
  end

  describe 'a number divisible by 3 and 5' do
    [15, 30, 45, 60, 90].each do |number|
      it "#{number} gives fizzbuzz" do
        expect(subject.decide(number)).to eq 'fizzbuzz'
      end
    end
  end

  describe 'any other number just gets printed' do
    [1, 2, 4, 7, 8, 11, 13, 16].each do |number|
      it "#{number} gives #{number}" do
        expect(subject.decide(number)).to eq number
      end
    end
  end
end
