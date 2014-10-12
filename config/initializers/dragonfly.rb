require 'dragonfly'
require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks true
  secret "1bddaecdd355d8b588c605e93810787c73ccdb9f100456cb7d395a965bf0865c"

  url_format "/media/:job/:name"

  datastore :s3,
    bucket_name: 'my-bucket',
    access_key_id: 'AKIAJVB3D2WUO35VLY5A',
    secret_access_key: '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'
    #root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    #server_root: Rails.root.join('public')
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
