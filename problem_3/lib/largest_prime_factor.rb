require_relative './ext/fixnum'

module Problem3
  def largest_prime_factor num
    2.upto(num/2) do |i|
      if num % i == 0
        lf = num/i
        num = lf
        return lf if lf.prime?
      end
    end
  end

  if $0 == __FILE__
    require 'minitest'
    require 'minitest/autorun'
    require 'minitest/pride'

    class LargestPrimeFactorTest < MiniTest::Test
      include Problem3

      def test_largest_prime_factor_of_13195
        assert_equal(largest_prime_factor(13195), 29)
      end

      def test_largest_prime_factor_of_600851475143
        assert_equal(largest_prime_factor(600851475143), 6857)
      end
    end
  end
end
