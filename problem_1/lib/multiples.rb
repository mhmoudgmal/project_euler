module Problem1
  def natural_multiples divisors, limit
    (1...limit).inject([]) do |multiples, num|
      multiples << num if is_divisable(num, divisors)
      multiples
    end
  end

  private

  def is_divisable num, divisors
    divisors.each do |d|
      return true if num % d == 0
    end

    false
  end


  if $0 == __FILE__
    require 'minitest'
    require 'minitest/pride'
    require 'minitest/autorun'

    class MultiplesTest < MiniTest::Test

      include Problem1

      def test_natural_multiples_3_5_below_10
        assert_equal(natural_multiples([3, 5], 10), [3, 5, 6, 9])
      end

      def test_sum_of_natural_multiples_3_5_below_10
        assert_equal(natural_multiples([3, 5], 10).inject(&:+), 23)
      end

      def test_natural_multiples_3_5_below_1000
        assert_equal(natural_multiples([3, 5], 1000).inject(&:+), 233168)
      end
    end
  end
end
