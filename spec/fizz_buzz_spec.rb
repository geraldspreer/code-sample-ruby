# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do
  describe 'Play the game of Fizz Buzz' do
    it 'a number divisible by 3 gives fizz' do
      expect(subject.decide(3)).to eq 'fizz'
    end

    it 'a number divisible by 5 gives buzz' do
      expect(subject.decide(5)).to eq 'buzz'
    end

    it 'a number divisible by 3 and 5 gives fizzbuzz' do
      expect(subject.decide(15)).to eq 'fizzbuzz'
    end

    it 'any other number just gets printed' do
      expect(subject.decide(8)).to eq 8
    end
  end
end
