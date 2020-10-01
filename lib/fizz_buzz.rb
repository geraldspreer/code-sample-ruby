# frozen_string_literal: false

class FizzBuzz
  def decide(input)
    number = NumberToDecideOn.new(input)
    answer = ''
    answer << 'fizz' if number.is.divisible_by 3
    answer << 'buzz' if number.is.divisible_by 5

    answer.empty? ? input : answer
  end
end

class NumberToDecideOn
  def initialize(number)
    @number = number
  end

  def is
    self
  end

  def divisible_by(number)
    (@number % number).zero?
  end
end
