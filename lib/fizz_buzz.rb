#!/usr/bin/ruby
# frozen_string_literal: false

class FizzBuzz
  def ask_about(number_to_check)
    number = FizzBuzzNumber.new(number_to_check)
    answer = ''
    answer << 'fizz' if number.divisible_by? 3
    answer << 'buzz' if number.divisible_by? 5

    answer.empty? ? number_to_check : answer
  end
end

class FizzBuzzNumber
  def initialize(number)
    @number = number
  end

  def divisible_by?(number)
    (@number % number).zero?
  end
end

if $PROGRAM_NAME == __FILE__
  fizz_buzz = FizzBuzz.new
  1.upto 100 do |number|
    puts fizz_buzz.ask_about number
  end
end
