# plugins/external_links/init.rb

require 'redmine'
require_dependency File.expand_path('lib/external_links_hook', __dir__)

Redmine::Plugin.register :external_links do
  name 'External Links'
  author 'Andreas Werner'
  description 'A simple plugin uses JavaScript to add target="_blank" and rel="noopener noreferrer" to links with class="external". Links pointing to your own Redmine host are excluded.'
  version '0.3.0'
  requires_redmine version_or_higher: '6.0'
  url 'https://github.com/AlbiWe/redmine-external-links.git'
end
