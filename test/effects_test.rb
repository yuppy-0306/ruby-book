require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end
end

module Effects
  def self.reverse
    ->(words) { words.split(' ').map(&:reverse).join(' ') }
  end

  def self.echo(rate)
    ->(words) do
      words.each_char.map { |c| c == ' ' ? c : c * rate }.join
    end
  end
end