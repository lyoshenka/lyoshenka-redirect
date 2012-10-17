require 'bundler'
Bundler.require

use Rack::Rewrite do
#  r301 %r{.*}, 'http://blog.grin.io', :if => Proc.new {|rack_env|
#    rack_env['SERVER_NAME'] == 'lyoshenka.com'
#  }

  r301 %r{.*}, 'http://blog.grin.io', :host => 'lyoshenka.com'
end

run lambda { |env| [404, {'Content-Type' => 'text/html'}, ['Not Found']]}
