# plugins/external_links/lib/external_links_hook.rb

class ExternalLinksHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    javascript_include_tag(
      'redmine-external-links',
      plugin: 'redmine-external-links'
    )
  end
end
