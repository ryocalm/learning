# frozen_string_literal: true

require 'test/unit'
require './lib/fizzbuzz.rb'

class TestSample < Test::Unit::TestCase
  def test_fizzbuzz
    assert { fizzbuzz(1) == '1' }
    assert { fizzbuzz(2) == '2' }
    assert { fizzbuzz(3) == 'Fizz' }
    assert { fizzbuzz(4) == '4' }
    assert { fizzbuzz(5) == 'Buzz' }
    assert { fizzbuzz(6) == 'Fizz' }
    assert { fizzbuzz(15) == 'FizzBuzz' }
  end
end

# require 'minitest/autorun'
# class FizzBuzzTest < Minitest::Test
#   def test_fizzbuzz
#     assert_equal '1', fizzbuzz(1)
#   end
# end
