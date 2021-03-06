Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  config.action_mailer.default_url_options = { host: "memknow-test.com" }
  config.action_mailer.delivery_method = :smtp

  ENV["REDISTOGO_URL"] = "redis://redistogo:e80e39ac81a08450bf2966641065a49d@mummichog.redistogo.com:9585/"
end
