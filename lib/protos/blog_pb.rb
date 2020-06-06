# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: blog.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("blog.proto", :syntax => :proto3) do
    add_message "blog.BlogPost" do
      optional :id, :int32, 1
      optional :title, :string, 2
    end
    add_message "blog.ShowRequest" do
      optional :id, :int32, 1
    end
    add_message "blog.ShowReply" do
      optional :blog_post, :message, 1, "blog.BlogPost"
    end
  end
end

module Blog
  BlogPost = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blog.BlogPost").msgclass
  ShowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blog.ShowRequest").msgclass
  ShowReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("blog.ShowReply").msgclass
end