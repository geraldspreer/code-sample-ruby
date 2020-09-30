# frozen_string_literal: true

class FizzBuzz
  def decide(number)
    return 'fizzbuzz' if divible_by_five(number) && divible_by_tree(number)
    return 'fizz' if divible_by_tree(number)
    return 'buzz' if divible_by_five(number)

    # First have this here and fail
    # return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    number
  end

  private

  def divible_by_tree(number)
    (number % 3).zero?
  end

  def divible_by_five(number)
    (number % 5).zero?
  end
end
