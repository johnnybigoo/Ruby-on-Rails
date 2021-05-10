require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
	RSpec.describe PostsHelper, type: :helper do
		context '#post_format_partial_path' do
			it "returns a home_page partial's path" do
				helper.stub(:current_page?).and_return(true)
				expect(helper.post_format_partial_path).to (
					eq 'posts/post/home_page'
				)
			end

			it "returns a branch_page partial's path" do
				helper.stub(:current_page?).and_return(false)
				expect(helper.post_format_partial_path).to (
					eq 'posts/post/branch_page'
				)
		end

		context '#update_pagination_partial_path' do
			it "returns an update_pagination partial's path" do
				posts = double('posts', :next_page => 2)
				assign(:posts, posts)
				expect(helper.update_pagination_partial_path).to(
					eq 'posts/posts_pagination_page/update_pagination'
				)
			end

			it "returns a remove_pagination partial's path" do
				posts = double('posts', :next_page => nil)
				assign(:posts, posts)
				expect(helper.update_pagination_partial_path).to(
					eq 'posts/posts_pagination_page/remove_pagination'
				)
			end
		end
	end
end
