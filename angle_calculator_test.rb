require_relative 'angle_calculator'
require 'test/unit'

class TestAngleCalculator < Test::Unit::TestCase
  def test_angles
    assert_equal 82.5, AngleCalculator.calc(0,15)
    assert_equal 187.5, AngleCalculator.calc(2,45)
    assert_equal 15.0, AngleCalculator.calc(6,30)
    assert_equal 1.5, AngleCalculator.calc(6,33)
    assert_equal 28.5, AngleCalculator.calc(7,33)
  end
end
