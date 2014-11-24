class UvitaGenerators < Thor
  desc "new [API NAME]", "Scaffold a Grape API"
  def new(api_name)
    puts "Scaffolding #{api_name}"
  end
end
