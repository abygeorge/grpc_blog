this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'blog_services_pb'

# GreeterServer is simple server that implements the Helloworld Greeter server.
class BlogServer < BlogApp::BlogPost::Service
  def show(show_req, _unused_call)
    blog = {}
    blog[:id] = show_req.id
    blog[:title] = 'aby'
    BlogApp::ShowReply.new(blog: blog)
  end
end

def main
  s = GRPC::RpcServer.new
  s.add_http2_port('localhost:3001', :this_port_is_insecure)
  s.handle(BlogServer)
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
end

main
