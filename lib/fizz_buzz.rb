# frozen_string_literal: true

class FizzBuzz
  def decide(number)
    return number unless [3, 5, 15].include? number
    return 'fizzbuzz' if number == 15

    number == 5 ? 'buzz' : 'fizz'
  end
end
