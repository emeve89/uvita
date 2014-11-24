module Generators
  class Base
    def initialize(root_dir)
      @root_dir = Dir::pwd + %(/#{root_dir})
    end

    def generate
      raise NotImplementedError
    end

    protected

    attr_reader :root_dir
  end
end
