# frozen_string_literal: true

require 'test/unit'
require './lib/ch4_conv_rgb.rb'

class TestSample < Test::Unit::TestCase
  def test_to_hex
    assert { to_hex(0, 0, 0) == '#000000' }
    assert { to_hex(255, 255, 255) == '#ffffff' }
    assert { to_hex(240, 248, 255) == '#f0f8ff' }
  end

  def test_to_ints
    assert { to_ints('#000000') == [0, 0, 0] }
    assert { to_ints('#ffffff') == [255, 255, 255] }
    assert { to_ints('#f0f8ff') == [240, 248, 255] }
  end
end
