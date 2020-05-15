
# require 'rubygems'
# require 'bundler/setup'
 
# Bundler.require(:default)
 
require './lib/protos/blog_services_pb'
require './app'
 


# Dir[File.expand_path './app/controllers/*.rb'].each do |file|
#   require file
# end

class BlogService < Blog::BlogService::Service
  def show(request, _unused_call)
  	p '--------BlogService-----------------'
    # blog_post = BlogPost.find request.id
    blog_post = BlogPostController.new().show(request)
    p '2222222222222222222222'
    p blog_post
    Blog::ShowReply.new(blog_post: blog_post)
  end
end