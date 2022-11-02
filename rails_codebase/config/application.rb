require_relative "boot"

 require "rails/all"
#  require "rails"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsCodebase
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

#defang Active_storage 
# per https://stackoverflow.com/questions/52497044/how-to-disable-auto-generated-routes-by-active-storage/53159319#53159319

initializer(:remove_activestorage_routes, after: :add_routing_paths) {|app|
  app.routes_reloader.paths.delete_if {|path| path =~ /activestorage/}}

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
