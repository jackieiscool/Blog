class Post

	attr_accessor :author, :text, :comments

	def initialize(author, text)
		@author = author
		@text = text
		@comments = []
	end

	def add_comment(comment)
		self.comments << comment
	end

end