class Comment

	attr_accessor :author, :text, :post

	def initialize(author, text, post)
		@author = author
		@text = text
		@post = post
	end

end