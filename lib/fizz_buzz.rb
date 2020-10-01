# frozen_string_literal: true

class FizzBuzz
  def decide(input)
    number = NumberToDecideOn.new(input)

    return 'fizzbuzz' if number.divisible_by(15)
    # return 'fizzbuzz' if number.divisible_by(3) && number.divisible_by(5)
    return 'fizz' if number.divisible_by 3
    return 'buzz' if number.divisible_by 5

    input
  end
end

class NumberToDecideOn
  def initialize(number)
    @number = number
  end

  def divisible_by(number)
    (@number % number).zero?
  end
end
