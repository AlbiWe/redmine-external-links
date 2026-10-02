# plugins/external_links/lib/external_links_hook.rb

class ExternalLinksHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    javascript_include_tag(
      'external_links',
      plugin: 'external_links'
    )
  end
end
