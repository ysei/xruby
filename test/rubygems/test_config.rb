#--
# Copyright 2006 by Chad Fowler, Rich Kilmer, Jim Weirich and others.
# All rights reserved.
# See LICENSE.txt for permissions.
#++

require_relative 'gemutilities'
require 'rbconfig'
require 'rubygems'

class TestConfig < RubyGemTestCase

  def test_datadir
    datadir = RbConfig::CONFIG['datadir']
    assert_equal "#{datadir}/xyz", RbConfig.datadir('xyz')
  end

end

