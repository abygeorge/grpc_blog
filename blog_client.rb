this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require './lib/blog_service'

def main
  stub = Blog::BlogService::Stub.new('localhost:3001', :this_channel_is_insecure)
  message = stub.show(Blog::ShowRequest.new(id: 1)).blog_post
  p message
end

main
