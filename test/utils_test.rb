# -*- encoding : ascii-8bit -*-
require 'test_helper'

class UtilsTest < Minitest::Test
  include DEVp2p

  def test_update_config_with_defaults
    c = {a: {b: 1}, g: 5}
    d = {a: {b: 2, c: 3}, d: 4, e: {f: 1}}
    r = {a: {b: 1, c: 3}, d: 4, e: {f: 1}, g: 5}
    assert_equal r, Utils.update_config_with_defaults(c, d)

    c = {a: {b: 1}, g: 5, h: [], k: [2]}
    d = {a: {b: 2, c: 3}, d: 4, e: {f: 1, i: [1, 2]}, j: []}
    r = {a: {b: 1, c: 3}, d: 4, e: {f: 1, i: [1, 2]}, j: [], g: 5, h: [], k: [2]}
    assert_equal r, Utils.update_config_with_defaults(c, d)
  end

end