# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do
  context 'when number is divisible only by 3' do
    [3, 6, 9, 12, 18, 21, 24, 27].each do |divisible_by_three|
      it "#{divisible_by_three} should give fizz" do
        expect(subject.ask_about(divisible_by_three)).to eq 'fizz'
      end
    end
  end

  context 'when number is divisible only by 5' do
    [5, 10, 20, 25, 35, 40].each do |divisible_by_five|
      it "#{divisible_by_five} gives buzz" do
        expect(subject.ask_about(divisible_by_five)).to eq 'buzz'
      end
    end
  end

  context 'when number is divisible by 3 and 5' do
    [15, 30, 45, 60, 90].each do |divisible_by_three_and_five|
      it "#{divisible_by_three_and_five} gives fizzbuzz" do
        expect(subject.ask_about(divisible_by_three_and_five)).to eq 'fizzbuzz'
      end
    end
  end

  context 'any other number' do
    [1, 2, 4, 7, 8, 11, 13, 16].each do |any_other_number|
      it "#{any_other_number} just gets printed" do
        expect(subject.ask_about(any_other_number)).to eq any_other_number
      end
    end
  end
end
