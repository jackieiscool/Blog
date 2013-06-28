require './spec_helper.rb'

describe Post do

	before do
		@author = User.new("Jackie")
	end

	subject do
		Post.new(@author, "My post")
	end

	describe '.initialize' do
		it 'should initialize with an author' do
			subject.author.should == @author
		end

		it 'should initialize with text' do
			subject.text.should == "My post"
		end

		it 'should initialize with no comments' do
			subject.comments.count.should == 0
		end
	end

	describe '.add_comment' do

		it 'should add a comment to the post' do
			comment = Comment.new(@author, "my comment", subject)
			subject.add_comment(comment)
			subject.comments.count.should == 1
		end

	end

end