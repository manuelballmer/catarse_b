# tell the I18n library where to find your translations
I18n.load_path += Dir[Rails.root.join('lib', 'locales', '*.{rb,yml}')]
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

# set available locales from config/locales files
I18n.available_locales = Dir[Rails.root.join('config', 'locales', '*.{yml}')].collect {|l| locale = l.scan(/.+\/(..)\.yml/)[0]; locale[0].to_sym unless locale.nil?}.delete_if {|locale| locale.nil?}

# set default locale to something other than :en
I18n.default_locale = :"de-CH"
I18n.locale = :"de-CH"
# # using the default locale as default fallback locale
#
#I18n.default_locale = :en
#I18n.fallbacks = I18n::Locale::Fallbacks.new(:"de-CH" => :"de-DE")
#I18n.fallbacks[:"de-CH"] # => [:"de-CH", :"de-DE", :de, :en]