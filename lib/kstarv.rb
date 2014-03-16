require "kstarv/version"
require "kstarv/k_v"

module Kstarv

  class << self
    def from file,join='='
      File.exists?(file) ? KV.new(file, join) : (raise NoSuchFile.new(file))
    end
  end


  class NoSuchFile < StandardError
    def initialize path
      @path = path
    end

    def message
      "can not find #{@path}"
    end
  end
end
