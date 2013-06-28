require './spec_helper.rb'

describe User do

	subject do
		User.new("Jackie")
	end

	describe 'initialize' do

		it 'should initialize with a name' do
			subject.name.should == "Jackie"
		end

		it 'should initialize with no posts' do
			subject.posts.count.should == 0
		end

		it 'should initialize with no comments' do
			subject.comments.count.should == 0
		end

	end

	describe 'write_post' do

		it 'should create a new post' do
			subject.write_post("my post")
			subject.posts.count.should == 1
		end

		it 'should assign user as author' do
			subject.write_post("my post")
			subject.posts.first.author.should == subject
		end

	end

	describe 'write_comment' do

		before do
			@post = Post.new(subject, "my post")
		end

		it 'should create a new comment' do
			subject.write_comment("my comment", @post)
			subject.comments.count.should == 1
		end

		it 'should assign user as author' do
			subject.write_comment("my comment", @post)
			subject.comments.first.author.should == subject
		end

	end
end