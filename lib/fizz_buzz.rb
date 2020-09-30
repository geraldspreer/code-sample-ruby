# frozen_string_literal: true

class FizzBuzz
  def decide(number)
    return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    # First have this here and fail
    # return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    number
  end
end
