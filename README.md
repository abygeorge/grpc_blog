# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# grpc_blog
# grpc_blog

Generate proto file
grpc_tools_ruby_protoc -I protos --ruby_out=lib/protos/ --grpc_out=lib/protos/ protos/blog.proto