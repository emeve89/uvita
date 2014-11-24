module Generators
  class SkeletonGenerator < Base

    FOLDERS = %w(/test /lib /public /lib/models /lib/views).freeze

    def generate
      return unless create_dir(root_dir)
      create_sub_dirs
    end

    private

    def create_sub_dirs
      FOLDERS.each do |folder|
        create_dir(root_dir + folder)
      end
    end

    def create_dir(dir)
      begin
        Dir::mkdir(dir)
      rescue
        puts "The directory already exists - (#{dir})"
        false
      end
    end

  end
end
