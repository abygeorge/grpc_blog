this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'blog_services_pb'

def main
  stub = BlogApp::BlogPost::Stub.new('localhost:3001', :this_channel_is_insecure)
  message = stub.show(BlogApp::ShowRequest.new(id: 1)).blog
  p message
end

main
