# Load the rails application
require File.expand_path('../application', __FILE__)
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
# Initialize the rails application
Egat::Application.initialize!
# ActionView::Base.field_error_proc = Proc.new do |html_tag, instance| 
#   if html_tag =~ /<label/
#     t = html_tag.split('</')
#     (%(#{t[0]}<small>**</small></#{t[1]})).html_safe
#   else
#     html_tag
#   end
# end
