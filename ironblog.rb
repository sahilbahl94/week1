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
		@posts.sort { 
			|post1, post2| post2.date <=> post1.date
		}
	end

	def create__front_page
		sort_posts
		@front_page = @posts.each do |post| 
			post.format
		end
	end

	def publish_front_page
		puts @front_page
	end

	def number_of_posts
		@posts.length
	end

	def paginator 
		index = 1
		page = []
		@posts.each { |post|
			if index <= 3 
				page.push(post)
			elsif index == 3
				@posts.push(page)
				page = []
				index = 0
			end
			index += 1
		}
	end
§
end


post1 = Post.new("The Basics", "2001-02-03", "Hello World")
post3 = Post.new("Trump for America", "2014-06-07", "HP Lives")
post2 = SponsoredPost.new("Life of Pi", "2015-04-05", "The boy who lived")
post4 = Post.new("Post4", "2014-07-07", "You")
post5 = Post.new("Post 5", "2014-08-07", "Can")
post6 = Post.new("Post 6", "2014-09-07", "Figure")
post7 = Post.new("Post 7", "2014-10-07", "This")
post8 = Post.new("Post 8", "2014-11-07", "Out")


basic_blog = Blog.new 

basic_blog.add_post(post1)
basic_blog.add_post(post2)
basic_blog.add_post(post3)
basic_blog.add_post(post4)
basic_blog.add_post(post5)
basic_blog.add_post(post6)
basic_blog.add_post(post7)
basic_blog.add_post(post8)

basic_blog.create_page


			

