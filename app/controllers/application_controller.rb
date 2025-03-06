class ApplicationController < ActionController::Base
  prepend_view_path "app/views/pages"
  prepend_view_path "app/views/partials"
end
