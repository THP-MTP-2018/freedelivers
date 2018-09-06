# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w(
  css/animate.min.css
  css/bootstrap.css
  css/font-awesome.min.css
  css/jquery.DonutWidget.min.css
  css/jquerysctipttop.css
  css/linearicons.css
  css/magnific-popup.css
  css/main.css
  css/nice-select.css
  css/owl.carousel.css

  js/easing.min.js
  js/hoverIntent.js
  js/jquery.ajaxchimp.min.js
  js/jquery.magnific-popup.min.js
  js/jquery.nice-select.min.js
  js/jquery.sticky.js
  js/mail-script.js
  js/main.js
  js/owl.carousel.min.js
  js/parallax.min.js
  js/slick.js
  js/superfish.js
  js/superfish.min.js
)
