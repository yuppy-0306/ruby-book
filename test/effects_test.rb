require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.test_reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
end