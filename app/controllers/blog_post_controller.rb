class BlogPostController
	def show(request)
 		p '----------------blog post controller'
		p request
		# { id: 1, title: '123'}
		blog_post = BlogPost.find request.id
		{ id: blog_post.id, title: blog_post.title }
	end
end
