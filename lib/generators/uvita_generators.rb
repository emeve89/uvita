module Generators
  class UvitaGenerators < Thor

    desc "new [API NAME]", "Scaffold a Grape API"
    def new(api_name)
      Generators::SkeletonGenerator.new(api_name).generate
    end
  end
end
