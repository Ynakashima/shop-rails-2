require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShopRails2
  class Application < Rails::Application
    config.api_only = true
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join('lib')
    config.assets.initialize_on_precompile = false

    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
  end
end
