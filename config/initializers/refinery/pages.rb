# encoding: utf-8
Refinery::Pages.configure do |config|
  # Configure specific page templates
  # config.types.register :home do |home|
  #   home.parts = %w[intro body]
  # end

  # Configure global page default parts
  # config.default_parts = [{:title=>"Body", :slug=>"body"}, {:title=>"Side Body", :slug=>"side_body"}]

  # Configure whether to allow adding new page parts
  # config.new_page_parts = false

  # Configure whether to enable marketable_urls
  # config.marketable_urls = true

  # You can specify reserved words that won't be used as page slugs.
  # This only applies when marketable_urls is enabled.
  # config.friendly_id_reserved_words = ["index", "new", "session", "login", "logout", "users", "refinery", "admin", "images", "wymiframe"]

  # Configure how many pages per page should be displayed when a dialog is presented that contains a links to pages
  # config.pages_per_dialog = 14

  # Configure how many pages per page should be displayed in the list of pages in the admin area
  # config.pages_per_admin_index = 20

  # Configure whether to strip diacritics from Western characters
  # config.approximate_ascii = false

  # Configure whether to strip non-ASCII characters from the friendly_id string
  # config.strip_non_ascii = false

  # Set this to true if you want to override slug which automatically gets generated
  # when you create a page
  # config.use_custom_slugs = false

  # Set this to true if page slugs generated by friendly_id should be scoped by parent.
  # If false, page slugs are global, and are, in effect, custom routes that may contain slashes.
  # By default, these routes will be flattened to the root, using the slugged page title,
  # and will no longer be nested as children.
  # config.scope_slug_by_parent = true

  # Set this to true to activate full-page-cache.
  # If you use Rails 4.0+ and set config.cache_pages_full to true, you have to add this gem in your Gemfile:
  # gem 'actionpack-page_caching'
  # config.cache_pages_full = false

  # Set this to true to fully expand the page hierarchy in the admin
  # config.auto_expand_admin_tree = true

  config.layout_template_whitelist = ["refinery"]

  # config.use_layout_templates = false

  # Use these if you want to use layout or view templates whose filenames do not match the default pattern
  # For more information on the patterns see Dir.glob (http://ruby-doc.org/core-2.2.0/Dir.html#method-c-glob)
  # example: for .erb, .html and .rb view templates use
  #         config.view_templates_pattern = 'app', 'views', '{pages,refinery/pages}', '*.{erb,html,rb}'

  # config.layout_templates_pattern = 'app', 'views', '{layouts,refinery/layouts}', '*html*'
  # config.view_templates_pattern = 'app', 'views', '{pages,refinery/pages}', '*html*'

  # config.page_title = {:chain_page_title=>false, :ancestors=>{:separator=>" | ", :class=>"ancestors", :tag=>"span"}, :page_title=>{:class=>nil, :tag=>nil, :wrap_if_not_chained=>false}}

  # config.absolute_page_links = false

  config.show_title_in_body = false

  # You can add new HTML elements not already supported by Loofah::HTML5::WhiteList::ALLOWED_ELEMENTS
  # For more information on whitelist see ALLOWED_ELEMENTS
  # (https://github.com/flavorjones/loofah/blob/v2.0.3/lib/loofah/html5/whitelist.rb#L151)
  # config.add_whitelist_elements = ["source", "track"]

  # You can add new HTML attributes not already supported by Loofah::HTML5::WhiteList::ALLOWED_ATTRIBUTES
  # For more information on whitelist see ALLOWED_ATTRIBUTES
  # (https://github.com/flavorjones/loofah/blob/v2.0.3/lib/loofah/html5/whitelist.rb#L152)
  # config.add_whitelist_attributes = ["kind", "srclang", "placeholder", "controls", "required"]
end
