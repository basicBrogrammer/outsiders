require 'dragonfly'
require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  #protect_from_dos_attacks true
  #secret "1bddaecdd355d8b588c605e93810787c73ccdb9f100456cb7d395a965bf0865c"

  url_format "/media/:job/:name"

  if Rails.env.development? || Rails.env.test?
    datastore :file,
      root_path: Rails.root.join('public/system/dragonfly', Rails.env),
      server_root: Rails.root.join('public')
  else
    datastore :s3,
      bucket_name: 'outsidershunting',
      access_key_id: 'AKIAJKTYANEG4KNXJCNA',
      secret_access_key: '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',
      fog_storage_options: {path_style: true},
      url_scheme: 'https'
  end

end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
