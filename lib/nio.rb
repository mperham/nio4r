# frozen_string_literal: true

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
end

require "nio/monitor"
require "nio/selector"
require "nio/bytebuffer"
NIO::ENGINE = "ruby".freeze
