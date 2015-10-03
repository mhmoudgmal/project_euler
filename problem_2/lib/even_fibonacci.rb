module Problem2

  def even_fibonacci n
    a, b = 1, 1
    result = []

    while a < n
      result << a if a.even?
      a, b = (a + b), a
    end

    result
  end

  if $0 == __FILE__
    require 'minitest'
    require 'minitest/autorun'
    require 'minitest/pride'

    class EvenFibonacciTest < MiniTest::Test

      include Problem2

      def test_fibonacci_sequence_upto_10
        assert_equal(even_fibonacci(10), [2, 8])
      end

      def test_fibonacci_sequence_upto_4000000
        assert_equal(even_fibonacci(4000000).inject(&:+), 4613732)
      end
    end
  end
end
