
# require 'rubygems'
# require 'bundler/setup'
require './lib/blog_service'
# require 'logging'
 
# Bundler.require(:default)
 
# module GRPC
#   extend Logging.globally
# end
 
# Logging.logger.root.appenders = Logging.appenders.stdout
# Logging.logger.root.level = :info
 
 
class BlogServer
  class << self
    def start
      start_grpc_server
    end
 
    private
 
    def start_grpc_server
      @server = GRPC::RpcServer.new
      @server.add_http2_port('0.0.0.0:3001', :this_port_is_insecure)
      @server.handle(BlogService)
      @server.run_till_terminated
    end
  end
end
 
BlogServer.start
