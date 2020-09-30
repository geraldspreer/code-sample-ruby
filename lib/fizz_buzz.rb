# frozen_string_literal: true

class FizzBuzz
  def decide(input)
    number = NumberToDecideOn.new(input)

    return 'fizzbuzz' if number.divible_by_five && number.divible_by_tree
    return 'fizz' if number.divible_by_tree
    return 'buzz' if number.divible_by_five

    # First have this here and fail
    # return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    input
  end
end

class NumberToDecideOn
  def initialize(number)
    @number = number
  end

  def divible_by_tree
    (@number % 3).zero?
  end

  def divible_by_five
    (@number % 5).zero?
  end
end
