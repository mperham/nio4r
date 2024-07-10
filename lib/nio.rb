# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2011-2017, by Tony Arcieri.
# Copyright, 2013, by Stephen von Takach.
# Copyright, 2013, by Per Lundberg.
# Copyright, 2014, by Marek Kowalcze.
# Copyright, 2016, by Upekshe Jayasekera.
# Copyright, 2019-2023, by Samuel Williams.
# Copyright, 2021, by Jun Jiang.

require "socket"
require "nio/version"

# New I/O for Ruby
module NIO
  # NIO implementation, one of the following (as a string):
  # * select: in pure Ruby using Kernel.select
  # * libev: as a C extension using libev
  # * java: using Java NIO
  def self.engine
    ENGINE
  end

  def self.pure?(_)
    true
  end
end

require "nio/monitor"
require "nio/selector"
require "nio/bytebuffer"
NIO::ENGINE = "ruby"
