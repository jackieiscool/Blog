require 'pry'

class User
	 attr_accessor :name, :posts, :comments

	 def initialize(name)
	 	@name = name
	 	@posts = []
	 	@comments = []
	 end

	 def write_post(text)
	 	@posts << Post.new(self, text)
	 end

	 def write_comment(text, post)
	 	comment = Comment.new(self, text, post)
	 	post.add_comment(comment)
	 	@comments << comment
	 end

end