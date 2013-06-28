require './spec_helper.rb'

describe Comment do

	before do
		@author = User.new("Jackie")
		@post = Post.new(@author, "My post")
	end

	subject do
		Comment.new(@author, "My comment", @post)
	end

	describe 'initialize' do
		it 'should initialize with an author' do
			subject.author.should == @author
		end

		it 'should initialize with text' do
			subject.text.should == "My comment"
		end

		it 'should initialize with a post' do
			subject.post.should == @post
		end
	end

end