# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('public/stylesheets')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( home.css home_print.css )
Rails.application.config.assets.precompile += %w( error.css error_print.css )
Rails.application.config.assets.precompile += %w( main.css main_print.css )
Rails.application.config.assets.precompile += %w( portfolio.css portfolio_print.css )
Rails.application.config.assets.precompile += %w( resume.css resume_print.css )
