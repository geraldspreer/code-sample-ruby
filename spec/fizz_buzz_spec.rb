# frozen_string_literal: true

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
