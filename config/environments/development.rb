Marqueed::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  
  # Setup options for action mailer (devise auth)
  config.action_mailer.default_url_options = { :host => 'marq.dev:3000' }
  
  # setup asset_host so asset_path() has full url
  config.action_controller.asset_host = 'http://marq.dev:3000'
  
  # host url without protocol
  config.host_url = 'marq.dev:3000'

  # facebook credentials
  config.facebook_app_id = '315995968446569'
  config.facebook_app_secret = '9da5d3610e9849c8f9594204441b5644'
end
