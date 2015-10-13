class Post
	attr_reader :title, :date, :text

	def initialize (title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def format
		"#{title}\n" +
		"**********\n" + 
		"#{text}\n" +
		"----------"
	end
end

class SponsoredPost < Post
	def title 
		"****** #{super} *******"
	end
end

class Blog
	def initialize 
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def sort_posts 
		@posts.sort! { |post1, post2| post2.date <=> post1.date}
	end

	def publish_front_page
		sort_posts
		@posts.each { |post| puts post.format}
	end

	def number_of_posts
		@posts.length
	end
end

post1 = Post.new("The Basics", "2001-02-03", "Hello World")
post3 = Post.new("Trump for America", "2014-06-07", "HP Lives")
post2 = SponsoredPost.new("Life of Pi", "2015-04-05", "The boy who lived")


basic_blog = Blog.new 

basic_blog.add_post(post1)
basic_blog.add_post(post2)
basic_blog.add_post(post3)

basic_blog.publish_front_page



			

