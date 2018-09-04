# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :dato, live_reload: true

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

dato.tap do |dato|
  dato.paintings.each do |painting|
    proxy "/paintings/#{painting.slug}", "/templates/painting.html", locals: { painting: painting }, layout: :layout
  end

  dato.painting_categories.each do |pc|
    proxy "/#{pc.slug}", "/templates/painting_category.html", locals: { painting_category: pc }, layout: :layout
  end
end

# tell Middleman to ignore the template
ignore "/templates/painting.html.erb"
ignore "/templates/painting_category.html.erb"

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

require "lib/helpers/application_helper"
helpers ApplicationHelper

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
