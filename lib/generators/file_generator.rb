module Generators
  class FileGenerator

    FILES = %w(/config.ru /Gemfile /Rakefile).freeze

    def initialize(root_dir)
      @root_dir = Dir::pwd + %(/#{root_dir})
    end

    def generate
      FILES.each do |file|
        File.new(root_dir + file, "w")
      end
    end

    private

    attr_reader :root_dir

  end
end
