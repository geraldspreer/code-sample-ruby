# frozen_string_literal: true

class FizzBuzz
  def decide(input)
    number = NumberToDecideOn.new(input)

    return 'fizzbuzz' if number.is.divible_by_tree_and_five
    return 'fizz' if number.is.divible_by_tree
    return 'buzz' if number.is.divible_by_five

    # First have this here and fail
    # return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    input
  end
end

class NumberToDecideOn
  def initialize(number)
    @number = number
  end

  def be(method)
    send method
  end

  def is
    self
  end

  def divible_by_tree_and_five
    divible_by_tree && divible_by_five
  end

  def divible_by_tree
    (@number % 3).zero?
  end

  def divible_by_five
    (@number % 5).zero?
  end
end
