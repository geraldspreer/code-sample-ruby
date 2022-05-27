# Code Sample - Ruby

Less is more, - and Fizz Buzz is the ultimate classic when it comes to coding interviews.
It's supposed to show that the applicant is capable of solving this seemingly trivial
challenge efficiently. At the very least, it'll show that the candidate
knows about conditions and the modulus operator.

Use `$ rspec` to run tests.  
Use `$ ruby ./ilb/fizz_buzz.rb` to run the script.  

### Fizz Buzz - The Way I See It

```
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

  def divisible_by?(divisor)
    (@number % divisor).zero?
  end
end

if $PROGRAM_NAME == __FILE__
  fizz_buzz = FizzBuzz.new
  1.upto 100 do |number|
    puts fizz_buzz.ask_about number
  end
end

```

### The Tests

Testing is an important part of my workflow. Even though I don't not follow
red, green, refactor religiously, having tests keeps me calm when things get out of hand.

```
require 'fizz_buzz'

RSpec.describe FizzBuzz do
  [
    { number: 1,  result: 1          },
    { number: 2,  result: 2          },
    { number: 3,  result: 'fizz'     },
    { number: 5,  result: 'buzz'     },
    { number: 6,  result: 'fizz'     },
    { number: 10, result: 'buzz'     },
    { number: 15, result: 'fizzbuzz' },
    { number: 16, result: 16         },
    { number: 17, result: 17         },
    { number: 18, result: 'fizz'     },
    { number: 20, result: 'buzz'     },
    { number: 21, result: 'fizz'     },
    { number: 22, result: 22         },
    { number: 30, result: 'fizzbuzz' },
    { number: 39, result: 'fizz'     },
    { number: 25, result: 'buzz'     },
  ].each do | test |

    it "#{test[:number]} gives #{test[:result]}" do
      expect(subject.ask_about test[:number]).to eq test[:result]
    end
  end

  describe 'when script is run by itself' do
    result = `ruby ./lib/fizz_buzz.rb`.split("\n")

    it 'fizz occurs 27 times' do
      expect(result.count 'fizz').to eq 27
    end

    it 'buzz occurs 14 times' do
      expect(result.count 'buzz').to eq 14
    end

    it 'fizzbuzz occurs 6 times' do
      expect(result.count 'fizzbuzz').to eq 6
    end

    it '100 results in total' do
      expect(result.count).to eq 100
    end
  end
end

```

I like Ruby. What a beautiful language.
